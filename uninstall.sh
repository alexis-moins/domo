#!/usr/bin/env bash
#
# Uninstall script
#
set -e

destination="${1:-"${HOME}/.local/bin"}"

./domo _uninstall "${destination}"
