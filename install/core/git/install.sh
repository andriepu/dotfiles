source "$DOTFILES_DIR/imports/index.sh"

setup_app () {
  local name=''
  local email=''

  printf "${Blue}Input Git name : ${Color_Off}"
  read name

  printf "${Blue}Input Git email : ${Color_Off}"
  read email

  if [ ! -z "$name" ]; then
    git config --global user.name "$name"
  fi

  if [ ! -z "$email" ]; then
    git config --global user.email "$email"
  fi
}

install_app () {
  brew install git
}

if ask_for "${Blue}Install ${Yellow}Git${Color_Off}"; then
  install_app

  echo -e "${Green}Git is installed.${Color_Off}"
fi

if ask_for "${Blue}Setup ${Yellow}Git${Color_Off}"; then
  setup_app

  echo -e "${Green}Git is set.${Color_Off}"
fi

echo

# vim:set syn=sh foldmethod=marker foldlevel=0:
