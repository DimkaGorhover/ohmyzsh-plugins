#!/bin/bash

set -eo pipefail

OH_MY_ZSH_DIR=$1
OHMYZSH_PLUGINS_DIR=$2

git clone \
    --depth 1 \
    --quiet \
    https://github.com/DimkaGorhover/ohmyzsh-plugins.git \
    ${OHMYZSH_PLUGINS_DIR}

for plugin_src in ${OHMYZSH_PLUGINS_DIR}/*; do
    if [[ -d ${plugin_src} ]]; then
        plugin_name=$(echo -n ${plugin_src} | rev | cut -d '/' -f 1 | rev)
        plugin_dest="${OH_MY_ZSH_DIR}/custom/plugins/${plugin_name}"
        echo "setup plugin: \"${plugin_name}\" --> ${plugin_dest}"
        ln -sf  ${plugin_src} ${plugin_dest}
    fi
done
