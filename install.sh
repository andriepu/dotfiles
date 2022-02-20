#!/usr/bin/env bash

sudo -v

# DOTFILES_DIR contains the path of this file
DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Imports {{{

# Order matters
source ${DOTFILES_DIR}/install/colors.sh
source ${DOTFILES_DIR}/install/hashmap.sh

source ${DOTFILES_DIR}/install/declarations.sh
source ${DOTFILES_DIR}/install/functions.sh

# }}}

# Go to dotfiles directory
# Next processes must be run from the root of dotfiles directory
cd $DOTFILES_DIR

# Installing Applications {{{

print_in_blue "\nApplications"
print_in_blue "\n------------"
printf "\n"

print_apps_list "$INSTALL_LIST"

printf "\n"

for app in $(string_to_array $INSTALL_LIST)
do
  if ask_for_install $app;
  then
    install_app $app
  fi
  echo
done

# }}}

print_in_green "\nAll done. Please REOPEN terminal to take effects...\n\n"

hclear_all

# vim: set syn=sh foldmethod=marker foldlevel=0:
