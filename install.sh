#!/bin/zsh

DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd $DOTFILES_DIR

symlinks=(
  .zshrc
  .vimrc
  .tmux.conf
  .tmuxinator.conf
)

# Helpers {{{
#
print_question() {
  # print output in yellow
  printf "\e[0;33m  [?] $1\e[0m"
}

ask_for_confirmation() {
  print_question "$1 (y/n) "
  read -q REPLY
  printf "\n"
}

answer_is_yes() {
  [[ "$REPLY" =~ ^[Yy]$ ]] && return 0 || return 1
}
#
# }}}

ask_for_confirmation "Update dotfiles from github?"
if answer_is_yes;
then
  git pull origin master
fi

for i in $symlinks
do
  ask_for_confirmation "Create symlink to '$HOME/$i' and backup your current $i if existed"

  if answer_is_yes;
  then
    if [[ -f $HOME/$i && ! -L $HOME/$i ]]
    then
      echo "\nbacking up your $i"
      mv $HOME/$i $DOTFILES_DIR/backups/$i.backup
    fi

    echo "\ncreating symlink"
    ln -svf $DOTFILES_DIR/$i $HOME/$i
  fi

done

# vim: set syn=sh foldmethod=marker foldlevel=0:
