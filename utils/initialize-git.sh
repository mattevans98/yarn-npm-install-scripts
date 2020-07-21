#!/bin/bash

git init
git add .eslintrc.js
git add .prettierrc.js
touch .gitignore
echo '/.idea' >> .gitignore