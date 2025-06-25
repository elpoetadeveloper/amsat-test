#!/bin/bash

WEB_DIR="/var/amsat/data/web"
GITHUB_DIR="/var/amsat/data/github"

# Copy templates if source directory exists and has files
if [ -d "${GITHUB_DIR}/frontend/templates" ] && [ "$(ls -A ${GITHUB_DIR}/frontend/templates)" ]; then
    cp ${GITHUB_DIR}/frontend/templates/* ${WEB_DIR}/templates
else
    echo "Templates directory is missing or empty: ${GITHUB_DIR}/frontend/templates"
fi

# Copy satellite assets if source directory exists and has files
if [ -d "${GITHUB_DIR}/frontend/sats" ] && [ "$(ls -A ${GITHUB_DIR}/frontend/sats)" ]; then
    cp ${GITHUB_DIR}/frontend/sats/* ${WEB_DIR}/share/assets
else
    echo "Sats directory is missing or empty: ${GITHUB_DIR}/frontend/sats"
fi

