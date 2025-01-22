#!/usr/bin/env bash
#
# Install script
#
set -e

destination="${1:-"${HOME}/.local/bin"}"

./domo _install "${destination}"
