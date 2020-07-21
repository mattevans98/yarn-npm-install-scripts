yarn init
yarn add express @types/express body-parser
yarn add -D typescript @types/node eslint eslint-config-prettier eslint-plugin-import eslint-plugin-prettier nodemon prettier ts-node
echo 'Yarn installation script finished executing! Now copying config files...'
linterDir="${INSTALL_SCRIPTS_DIR}/linter-configs/express"
destDir=$(pwd)
cp "${linterDir}/.eslintrc.js" "${linterDir}/.prettierrc.js" "${linterDir}/tsconfig.json" "$destDir"
git add .eslintrc.js
git add .prettierrc.js
echo 'Config files copied and added to git. Have fun!'