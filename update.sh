#!/usr/bin/env bash
#
# Update script
#
set -e

destination="${1:-"${HOME}/.local/bin"}"

./uninstall.sh "${destination}"

command git pull

./install.sh "${destination}"
