#!/bin/bash

COMPILE_AND_RUN="$1"
IT_DIR="/var/amsat/data/github/it"
OUT_DIR="/var/amsat/data/output"
PASSES_DIR="${OUT_DIR}/passes"
PASSES_HTML_DIR="${PASSES_DIR}/html"
PASSES_TXT_DIR="${PASSES_DIR}/txt"
JAVA_KEPS_UPDATER_DIR="/var/amsat/data/github/keps_updater"
JAVA_KEPS_DIR="/var/amsat/data/github/keps"
SCRIPTS_DIR="/var/amsat/data/github/scripts"

mkdir -p ${OUT_DIR}

chmod -R ugo+rwx ${IT_DIR}
chmod -R ugo+rwx ${OUT_DIR}

rm -rf "${OUT_DIR:?}"/{*,.[!.]*,..?*}

mkdir -p ${PASSES_HTML_DIR} ${PASSES_TXT_DIR} ${OUT_DIR}/files ${OUT_DIR}/files/passes ${OUT_DIR}/files/frontend/dist ${OUT_DIR}/files/frontend/templates

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

# Check if COMPILE_AND_RUN is equal to EXECUTE
if [ "$COMPILE_AND_RUN" == "EXECUTE" ]; then

echo "Preparing to compile and run the program..."
#Execute java update keps
rm -R ${JAVA_KEPS_UPDATER_DIR}/target
mkdir -p ${JAVA_KEPS_UPDATER_DIR}/target
javac -d ${JAVA_KEPS_UPDATER_DIR}/target ${JAVA_KEPS_UPDATER_DIR}/src/amsat/*.java
java -cp ${JAVA_KEPS_UPDATER_DIR}/target amsat.KepsUpdateRunner

else
  echo "COMPILE_AND_RUN is not EXECUTE, skipping the compile and run process."
fi

chmod -R ugo+rwx ${OUT_DIR}

cp -r ${PASSES_HTML_DIR} ${OUT_DIR}/files/passes
cp ${JAVA_KEPS_DIR}/output/all.json ${OUT_DIR}/files/frontend/dist
cp ${JAVA_KEPS_DIR}/output/nasa.all ${IT_DIR}
cp ${JAVA_KEPS_DIR}/output/spacetrack1.txt ${JAVA_KEPS_DIR}
