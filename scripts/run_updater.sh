#!/bin/bash

IT_DIR="/var/amsat/data/github/it"
PASSES_HTML_DIR="/var/amsat/data/github/passes/html"
PASSES_TXT_DIR="/var/amsat/data/github/passes/txt"
JAVA_KEPS_UPDATER_DIR="/var/amsat/data/github/keps_updater"
SCRIPTS_DIR="/var/amsat/data/github/scripts"
OUT_DIR="/var/amsat/data/output"

mkdir -p "${PASSES_HTML_DIR}" 
mkdir -p "${PASSES_TXT_DIR}" 
mkdir -p  ${OUT_DIR}/files ${OUT_DIR}/files/passes ${OUT_DIR}/files/frontend/dist ${OUT_DIR}/files/frontend/templates

chmod -R ugo+rwx ${IT_DIR}
chmod -R ugo+rwx ${OUT_DIR}

# List of script base names (without .bat)
#SCRIPTS=("subePasoPart1" "subePasoPart2" "subePasoPart3" "subePasoPart4" "subePasoPart5" "subePasoPart6" "subePasoPart7" "subePasoPart8" "subePasoPart9" "subePasoPart10")
SCRIPTS=("")

shopt -s nocaseglob
htm_files=(${IT_DIR}/pasos*.htm)
txt_files=(${IT_DIR}/pasos*.txt)
shopt -u nocaseglob

copy_and_lowercase() {
    local target_dir="$1"
    shift
    for file in "$@"; do
        if [[ ! -f "$file" ]]; then
            echo "[ERROR] File does not exist: $file"
            continue
        fi

        base=$(basename "$file")
        ext="${base##*.}"
        name="${base%.*}"
        lower_name=$(echo "$name" | tr '[:upper:]' '[:lower:]')
        lower_ext=$(echo "$ext" | tr '[:upper:]' '[:lower:]')

        # Convert .htm to .html
        if [[ "$lower_ext" == "htm" ]]; then
            lower_ext="html"
        fi

        new_file="${lower_name}.${lower_ext}"
        cp -f "$file" "$target_dir/$new_file"
    done
}

# Process HTML files
if (( ${#htm_files[@]} )); then
    copy_and_lowercase $PASSES_HTML_DIR "${htm_files[@]}"
else
    echo "[WARNING] $(date '+%Y-%m-%d %H:%M:%S') - No matching .htm files found."
fi

# Process TXT files
if (( ${#txt_files[@]} )); then
    copy_and_lowercase ${PASSES_TXT_DIR} "${txt_files[@]}"
else
    echo "[WARNING] $(date '+%Y-%m-%d %H:%M:%S') - No matching .txt files found."
fi

#Execute java update keps
rm -R ${JAVA_KEPS_UPDATER_DIR}/target
mkdir -p ${JAVA_KEPS_UPDATER_DIR}/target
javac -d ${JAVA_KEPS_UPDATER_DIR}/target ${JAVA_KEPS_UPDATER_DIR}/src/amsat/*.java
java -cp ${JAVA_KEPS_UPDATER_DIR}/target amsat.KepsUpdateRunner

for script in "${SCRIPTS[@]}"; do
  echo "[INFO] $(date '+%Y-%m-%d %H:%M:%S') - Running $script.bat batch script..."
  /bin/bash ${SCRIPTS_DIR}/run_dosbox.sh "$script"
  sleep 2
done

