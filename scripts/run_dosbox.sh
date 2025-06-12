#!/bin/bash

# Check if argument is provided
if [ -z "$1" ]; then
  echo "[WARNING] Usage: $0 <script_name_without_extension>"
  exit 1
fi

SCRIPT_NAME="$1"
BAT_FILE="${SCRIPT_NAME}.bat"
LOG_FILE="/var/amsat/logs/${SCRIPT_NAME}.log"
CONFIG_FILE="/var/amsat/data/github/it/dosbox.conf"
OUT_DIR="/var/amsat/data/output"

mkdir -p /var/amsat/logs ${IT_DIR}/captures /var/amsat/data/github/passes ${OUT_DIR}/files ${OUT_DIR}/files/passes ${OUT_DIR}/files/frontend/dist ${OUT_DIR}/files/frontend/templates

chmod -R ugo+rwx ${IT_DIR}
chmod -R ugo+rwx ${OUT_DIR}

# Ensure the log file exists before tailing
touch "$LOG_FILE"

# Write DOSBox config
cat <<EOF > "$CONFIG_FILE"
[sdl]
fullscreen=false
autolock=false
output=surface

[mixer]
nosound=true

[speaker]
pcspeaker=false
tandy=off
disney=false

[sblaster]
sbtype=none

[gus]
gus=false

[dosbox]
captures=${IT_DIR}/captures

[render]
frameskip=1

[cpu]
core=auto
cputype=auto
cycles=150000
cycleup=10
cycledown=20

[autoexec]
mount c ${IT_DIR}
c:
${BAT_FILE}
exit
EOF

# Start Xvfb manually
XVFB_DISPLAY=":99"
Xvfb $XVFB_DISPLAY -screen 0 640x480x16 & 
XVFB_PID=$!

# Export display
export DISPLAY=$XVFB_DISPLAY

# Cleanup function
cleanup() {
    echo "[INFO] $(date '+%Y-%m-%d %H:%M:%S') - Cleaning up Xvfb for $SCRIPT_NAME"
    kill $XVFB_PID 2>/dev/null
    wait $XVFB_PID 2>/dev/null
    exit $1
}

# Trap to ensure cleanup runs on exit
trap 'cleanup $?' EXIT INT TERM

# Run DOSBox and capture output
echo "[INFO] $(date '+%Y-%m-%d %H:%M:%S') - Starting DOSBox for $SCRIPT_NAME..." | tee -a "$LOG_FILE"
dosbox -conf "$CONFIG_FILE" -noconsole >> "$LOG_FILE" 2>&1
DOSBOX_EXIT_CODE=$?

# Detect fatal X11 error
if grep -q "fatal IO error 11" "$LOG_FILE"; then
    echo "[ERROR] $(date '+%Y-%m-%d %H:%M:%S') - Fatal IO error 11 (Resource temporarily unavailable) detected." | tee -a "$LOG_FILE"
    cleanup 1
fi

# If DOSBox crashed with error
if [ $DOSBOX_EXIT_CODE -ne 0 ]; then
    echo "[ERROR] $(date '+%Y-%m-%d %H:%M:%S') - DOSBox exited with code $DOSBOX_EXIT_CODE" | tee -a "$LOG_FILE"
    cleanup $DOSBOX_EXIT_CODE
fi

echo "[INFO] $(date '+%Y-%m-%d %H:%M:%S') - DOSBox completed successfully for $SCRIPT_NAME" | tee -a "$LOG_FILE"
exit 0

