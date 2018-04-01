#!/usr/bin/env bash

# DOTFILES_DIR contains the path of this file
DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Imports {{{
#
# Order matters
source ${DOTFILES_DIR}/install/colors.sh
source ${DOTFILES_DIR}/install/hashmap.sh

source ${DOTFILES_DIR}/install/declarations.sh
source ${DOTFILES_DIR}/install/confirmations.sh
#
# }}}

# Go to dotfiles directory
# Next processes must be run from the root of dotfiles directory
cd $DOTFILES_DIR

# Install dependencies {{{
#
print_in_blue "\nChecking Installation"
print_in_blue "\n--------------------------------"
printf "\n"
for to_install in ${INSTALL_LIST[@]}
do
  printf "~> Asking for $to_install"
  printf "\n"
  ask_for_install $to_install
  if answer_is_yes;
  then
    if command_exists "$1";
    then
      $(hget installPkg $to_install)
    else
      $(hget upgradePkg $to_install)
    fi
  fi

  if command_exists $to_install && hget installDep $to_install > /dev/null;
  then
    ask_for_confirmation "Install $to_install extensions to make it Great Again"
    if answer_is_yes;
    then
      $(hget installDep $to_install)
    fi
  fi

  printf "~> Finish asking for $to_install..."
  printf "\n\n"
done
#
# }}}

# Creating symlinks to be placed in $HOME {{{
#
print_in_blue "\nCreating Symlinks"
print_in_blue "\n--------------------------------"
printf "\n"
for i in ${SYMLINK_LIST[@]}
do
  ask_for_confirmation "Create symlink to '$HOME/$i' and backup your current $i if existed"
  if answer_is_yes;
  then
    if [[ -f $HOME/$i && ! -L $HOME/$i ]]
    then
      printf "backing up your $i"
      mv $HOME/$i $DOTFILES_DIR/backups/$i.backup
    fi

    printf "creating symlink"
    ln -svf $DOTFILES_DIR/$i $HOME/$i
  fi
done
#
# }}}

# Zsh Setup {{{
#
if command_exists "zsh";
then
  print_in_blue "\nZsh Setup"
  print_in_blue "\n--------------------------------"
  printf "\n"
  ask_for_confirmation "Do you want to make zsh as your default SHELL"
  if answer_is_yes;
  then
    if ! grep -Fxq "$(which zsh)" /etc/shells;
    then
      sudo sh -c "echo $(which zsh) >> /etc/shells"
    fi
    chsh -s $(which zsh)
  fi
fi
#
# }}}

# Tmux Setup {{{
#
if command_exists "tmux" && [[ -f $HOME/.tmux.conf ]];
then
  print_in_blue "\nTmux Setup"
  print_in_blue "\n--------------------------------"
  printf "\n"
  tmux source-file $HOME/.tmux.conf
fi
#
# }}}

# Vim Setup {{{
#
if command_exists "vim" && [[ -f $HOME/.vim/autoload/plug.vim ]];
then
  print_in_blue "\nVim Setup"
  print_in_blue "\n--------------------------------"
  printf "\n"
  ask_for_confirmation "Install Vim plugins"
  if answer_is_yes;
  then
    printf "\n"
    vim +'PlugInstall --sync' +qa
  fi
fi
#
# }}}

if command_exists "zsh";
then
  print_in_blue "\nAll Hail ZSH"
  print_in_blue "\n--------------------------------"
  printf "\n"
  ask_for_confirmation "Run Zsh"
  if answer_is_yes;
  then
    zsh
  fi
fi

hclear_all

# vim: set syn=sh foldmethod=marker foldlevel=0:
