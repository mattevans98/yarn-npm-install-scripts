#!/bin/bash

chmod +x "${INSTALL_SCRIPTS_DIR}/example-script.sh"
chmod +x "${INSTALL_SCRIPTS_DIR}/express-skeleton.sh"
chmod +x "${INSTALL_SCRIPTS_DIR}/initialize-git.sh"
chmod +x "${INSTALL_SCRIPTS_DIR}/move-configs.sh"
chmod +x "${INSTALL_SCRIPTS_DIR}/npm-install-express.sh"
chmod +x "${INSTALL_SCRIPTS_DIR}/npm-install-react.sh"
chmod +x "${INSTALL_SCRIPTS_DIR}/yarn-add-express.sh"
chmod +x "${INSTALL_SCRIPTS_DIR}/yarn-add-react.sh"
echo "If you received a 'Permission denied' error, run: \"chmod +x ${INSTALL_SCRIPTS_DIR}/grant-permissions.sh\" (without quotes) and then rerun this script"