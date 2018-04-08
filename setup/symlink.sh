creating_symlink() {
  if [[ -f $HOME/$1 && ! -L $HOME/$1 ]]
  then
    echo -e "${Yellow}Backing up your $1{Color_Off}"
    mv "$HOME/$1" "$DOTFILES_DIR/backups/$1.backup"
  fi
  echo -e "${Yellow}Creating symlink${Color_Off}"
  ln -svf $DOTFILES_DIR/$1 $HOME/$1
}
