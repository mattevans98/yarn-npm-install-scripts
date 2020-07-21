#!/bin/bash

chmod +x "${INSTALL_SCRIPTS_DIR}/utils/grant-permissions.sh"
"${INSTALL_SCRIPTS_DIR}/utils/grant-permissions.sh"
echo 'Creating project directory structure...'
mkdir -p src/models src/tests
touch src/App.ts src/models/App.model.ts src/tests/App.test.ts
echo 'Would you like to use Yarn? (y/n)'
read yarnChoice
wasSuccessful=false
if [ "$yarnChoice" == 'y' ] || [ "$yarnChoice" == 'Y' ]
then
  "${INSTALL_SCRIPTS_DIR}/express-installers/yarn-add-express.sh"
  wasSuccessful=true
elif [ "$yarnChoice" == 'n' ] || [ "$yarnChoice" == 'N' ]
then
  "${INSTALL_SCRIPTS_DIR}/express-installers/npm-install-express.sh"
  wasSuccessful=true
else
  echo 'Invalid input. Run this script again and supply valid input'
fi

if [ "$wasSuccessful" == true ]
then
  echo 'Done! Happy coding! :)'
else
  echo 'Something went wrong. Sorry about that...'
fi