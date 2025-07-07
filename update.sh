#!/usr/bin/env bash
#
# Update script
#
set -e

destination="${1:-"${HOME}/.local/bin"}"

# Soft uninstall the current version (does not remove global backend info)
./domo _uninstall "${destination}" --soft

command git pull

./domo _install "${destination}"
