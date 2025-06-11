#!/bin/bash

IT_DIR="/workspaces/amsat-test/it"
PASSES_HTML_DIR="/workspaces/amsat-test/passes/html"
PASSES_TXT_DIR="/workspaces/amsat-test/passes/txt"

shopt -s nocaseglob
htm_files=(${IT_DIR}/pasos*.htm)
txt_files=(${IT_DIR}/pasos*.txt)
shopt -u nocaseglob

copy_and_lowercase() {
    local target_dir="$1"
    echo ${target_dir}
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
echo ${name}
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
    copy_and_lowercase ${PASSES_HTML_DIR} "${htm_files[@]}"
else
    echo "[WARNING] $(date '+%Y-%m-%d %H:%M:%S') - No matching .htm files found."
fi

# Process TXT files
if (( ${#txt_files[@]} )); then
    copy_and_lowercase ${PASSES_TXT_DIR} "${txt_files[@]}"
else
    echo "[WARNING] $(date '+%Y-%m-%d %H:%M:%S') - No matching .txt files found."
fi