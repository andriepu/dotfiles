#!/bin/bash

DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd $DOTFILES_DIR

git pull origin master

symlinks=(
  .zshrc
  .vimrc
  .tmux.conf
)

for i in $symlinks
do
  if [[ -f $HOME/$i && ! -L $HOME/$i ]]; then
    echo "\nbacking up your $i"
    mv $HOME/$i $DOTFILES_DIR/backups/$i.backup
  fi

  echo "\ncreating symlink"
  ln -svf $DOTFILES_DIR/$i $HOME/$i
done

# vim: set syn=sh
