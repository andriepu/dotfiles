source "$DOTFILES_DIR/imports/index.sh"

setup_app () {
  local rcfile=$(get_rc_file)
  local scripts=(
    "source $DOTFILES_DIR/install/core/nvm/config/index.sh" 
  )

  # Update $HOME/.zshrc
  for i in ${!scripts[@]}; do
    append_to_file "${scripts[@]}" "$rcfile"
  done

  # Enable node
  nvm install --lts

  # Enable yarn
  corepack enable
  yarn set version stable

  source "$rcfile"
}

install_app () {
  brew install nvm
}

if ask_for "${Blue}Install ${Yellow}NVM${Color_Off}"; then
  install_app

  echo -e "${Green}NVM is installed.${Color_Off}"
fi

if ask_for "${Blue}Setup ${Yellow}NVM${Color_Off}"; then
  setup_app

  echo -e "${Green}NVM is set.${Color_Off}"
fi
echo

# vim:set syn=sh foldmethod=marker foldlevel=0:
