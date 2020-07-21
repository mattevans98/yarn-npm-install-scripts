#!/bin/bash

echo 'Creating project directory structure...'
mkdir -p src/models
touch src/App.ts src/models/App.model.ts
echo 'Would you like to use Yarn? (y/n)'
read yarnChoice
if [ "$yarnChoice" == 'y'] || [ $yarnChoice == 'Y']
then
