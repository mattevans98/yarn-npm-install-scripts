#!/bin/bash

yarn init
yarn add express @types/express body-parser
yarn add -D typescript @types/node eslint eslint-config-prettier eslint-plugin-import eslint-plugin-prettier nodemon prettier ts-node jest ts-jest @types/jest @typescript-eslint/parser
echo 'Yarn installation script finished executing! Now copying config files...'
linterDir="${INSTALL_SCRIPTS_DIR}/linter-configs/express"
destDir=$(pwd)
cp "${linterDir}/.eslintrc.js" "${linterDir}/.prettierrc.js" "${linterDir}/tsconfig.json" "$destDir"
echo 'Config files copied and git was initialized. You should now add these options to package.json'
echo "
{
  \"scripts\": {
    \"start\": \"node --inspect=5858 -r ts-node/register src/App.ts\",
    \"start:watch\": \"nodemon\",
    \"build\": \"tsc\"
  },
  \"nodemonConfig\": {
    {
    \"ignore\": [
        \"**/*.test.ts\",
        \"**/*.spec.ts\",
        \".git\",
        \"node_modules\"
      ],
      \"watch\": [
        \"src\"
      ],
      \"exec\": \"npm start\",
      \"ext\": \"ts\"
    }
  },
  \"jest\": {
    \"preset\": \"ts-jest\"
  }
}
"
