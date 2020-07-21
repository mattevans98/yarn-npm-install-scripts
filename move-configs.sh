#!/bin/bash

linterDir="${INSTALL_SCRIPTS_DIR}/linter-configs"
destDir=$(pwd)

cp "${linterDir}/.eslintrc.js" "${linterDir}/.prettierrc.js" "${linterDir}/tsconfig.json" "$destDir"
git add .eslintrc.js
git add .prettierrc.js
