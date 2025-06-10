#!/bin/bash

mkdir -p  /var/amsat/data/passes/html
mkdir -p  /var/amsat/data/passes/txt

# List of script base names (without .bat)
#SCRIPTS=("subePasoPart1" "subePasoPart2" "subePasoPart3" "subePasoPart4" "subePasoPart5" "subePasoPart6" "subePasoPart7" "subePasoPart8" "subePasoPart9" "subePasoPart10")
SCRIPTS=("subePasoPart1")

shopt -s nocaseglob
htm_files=(/var/amsat/data/it/pasos*.htm)
txt_files=(/var/amsat/data/it/pasos*.txt)
shopt -u nocaseglob

copy_and_lowercase() {
    local target_dir="$1"
    shift
    for file in "$@"; do
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
    copy_and_lowercase "/var/amsat/data/passes/html" "${htm_files[@]}"
else
    echo "[WARNING] $(date '+%Y-%m-%d %H:%M:%S') - No matching .htm files found."
fi

# Process TXT files
if (( ${#txt_files[@]} )); then
    copy_and_lowercase "/var/amsat/data/passes/txt" "${txt_files[@]}"
else
    echo "[WARNING] $(date '+%Y-%m-%d %H:%M:%S') - No matching .txt files found."
fi

#
#Execute java update keps
rm -R /var/amsat/data/keps_updater/target
mkdir -p /var/amsat/data/keps_updater/target
javac -d /var/amsat/data/keps_updater/target /var/amsat/data/keps_updater/src/amsat/*.java
java -cp /var/amsat/data/keps_updater/target amsat.KepsUpdateRunner

for script in "${SCRIPTS[@]}"; do
  echo "[INFO] $(date '+%Y-%m-%d %H:%M:%S') - Running $script.bat batch script..."
  /bin/bash  /var/amsat/data/scripts/run_dosbox.sh "$script"
  sleep 2
done


