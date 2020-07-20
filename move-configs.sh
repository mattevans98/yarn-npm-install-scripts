linterDir="${INSTALL_SCRIPTS_DIR}/linter-configs"
destDir=$(pwd)

cp "${linterDir}/.eslintrc.js" "${linterDir}/.prettierrc.js" "$destDir"
