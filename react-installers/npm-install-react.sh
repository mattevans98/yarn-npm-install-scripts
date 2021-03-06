#!/bin/bash

npm install --save antd
npm install --save-dev @typescript-eslint/eslint-plugin @typescript-eslint/parser eslint-config-prettier eslint-plugin-import eslint-plugin-prettier prettier eslint-plugin-react-hooks eslint-plugin-react @typescript-eslint/parser
echo 'NPM installation script finished executing! Now copying config files...'
linterDir="${INSTALL_SCRIPTS_DIR}/linter-configs/react"
destDir=$(pwd)
cp "${linterDir}/.eslintrc.js" "${linterDir}/.prettierrc.js" "${linterDir}/tsconfig.json" "$destDir"
"${INSTALL_SCRIPTS_DIR}/utils/initialize-git.sh"
echo 'Config files copied and added to git. Have fun!'
