#!/usr/bin/env bash

sudo -v

# DOTFILES_DIR contains the path of this file
DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Imports {{{
#
# Order matters
source ${DOTFILES_DIR}/setup/colors.sh
source ${DOTFILES_DIR}/setup/hashmap.sh

source ${DOTFILES_DIR}/setup/declarations.sh
source ${DOTFILES_DIR}/setup/confirmations.sh
#
# }}}

# Go to dotfiles directory
# Next processes must be run from the root of dotfiles directory
cd $DOTFILES_DIR

# Installing Dependencies {{{
#
print_in_blue "\nDependencies"
print_in_blue "\n--------------------------------------"
printf "\n"
print_app_in_li "$DEP_LIST" "coredep"
should_prompt=$(hget promptInstall "coredep")
if [ $should_prompt -gt 0 ];
then
  waiting_for_response
  for dep in "${ARRAY[@]}"
  do
    eval $(hget installPkg $dep)
  done
fi
#
# }}}

# Installing Applications {{{
#
print_in_blue "\nInstalling Applications"
print_in_blue "\n--------------------------------------"
printf "\n\n"

for to_install in ${INSTALL_LIST[@]}
do
  get_local_app
  hclear promptInstall

  print_in_purple "${Bold}-- $to_install --"
  print_in_purple "\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  printf "\n"

  print_in_yellow "» Status:"
  if app_is_exists $to_install;
  then
    print_in_green "Installed"
  else
    print_in_red "Not Installed"
  fi

  printf "\n\n"

  tmp=$(hget installDepNames $to_install)
  if [[ $tmp ]];
  then
    print_in_yellow "» Deps:"
    printf "\n"
    print_app_in_li "$tmp" "dep"
  fi

  tmp=$(hget installExtNames $to_install)
  if [[ $tmp ]];
  then
    print_in_yellow "» Extras:"
    printf "\n"
    print_app_in_li "$tmp" "ext"
  fi

  ask_for_install $to_install "check_update:true"
  if answer_is_yes;
  then
    if [[ $OUTDATED ]];
    then
      eval "$(hget upgradePkg $to_install)"
    else
      eval "$(hget installPkg $to_install)"
    fi
  fi

  tmp=$(hget installDepNames $to_install)
  should_prompt=$(hget promptInstall "dep")
  if [ $tmp ] && [ $should_prompt -gt 0 ];
  then
    ask_for_confirmation "Install Dependencies"
    if answer_is_yes;
    then
      string_to_array "$tmp"
      for pkg in "${ARRAY[@]}"
      do
        if app_is_exists $pkg;
        then
          check_outdated $pkg
          if answer_is_yes;
          then
            if [[ $OUTDATED ]];
            then
              eval "$(hget upgradePkg $pkg)"
            fi
          fi
        else
          eval "$(hget installPkg $pkg)"
        fi
      done
    else
      echo
    fi
  fi

  tmp=$(hget installExtNames $to_install)
  should_prompt=$(hget promptInstall "ext")
  if [ -n "$tmp" ] && [[ ! $should_prompt == 0 ]];
  then
    ask_for_confirmation "Install Extras"
    if answer_is_yes;
    then
      string_to_array "$tmp"
      for extra in "${ARRAY[@]}"
      do
        if app_is_exists $extra;
        then
          check_outdated $extra
          if answer_is_yes;
          then
            if [[ $OUTDATED ]];
            then
              eval "$(hget upgradePkg $extra)"
            fi
          fi
        else
          eval "$(hget installPkg $extra)"
        fi
      done
      echo
    else
      echo
    fi
  fi

  tmp=$(hget setupPkg $to_install)
  if [[ $tmp ]];
  then
    eval "$tmp"
  fi

  printf "\n"
done
#
# }}}

print_in_green "All is done. Please reopen terminal to take effects..."
echo
echo

waiting_for_response
echo

hclear_all

# vim: set syn=sh foldmethod=marker foldlevel=0:
