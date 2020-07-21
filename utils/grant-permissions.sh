#!/bin/bash

chmod +x "${INSTALL_SCRIPTS_DIR}/utils/example-script.sh"
chmod +x "${INSTALL_SCRIPTS_DIR}/utils/initialize-git.sh"
chmod +x "${INSTALL_SCRIPTS_DIR}/utils/move-configs.sh"
chmod +x "${INSTALL_SCRIPTS_DIR}/express-installers/express-skeleton.sh"
chmod +x "${INSTALL_SCRIPTS_DIR}/express-installers/yarn-add-express.sh"
chmod +x "${INSTALL_SCRIPTS_DIR}/express-installers/npm-install-express.sh"
chmod +x "${INSTALL_SCRIPTS_DIR}/react-installers/npm-install-react.sh"
chmod +x "${INSTALL_SCRIPTS_DIR}/react-installers/yarn-add-react.sh"

echo "If you received a 'Permission denied' error, run: \"chmod +x ${INSTALL_SCRIPTS_DIR}/utils/grant-permissions.sh\" (without quotes) and then rerun this script"