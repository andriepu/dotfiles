source "$DOTFILES_DIR/imports/index.sh"

install_app () {
  xcode-select --install
}

if ask_for "${Blue}Install ${Yellow}Xcode${Color_Off}"; then
  install_app

  echo -e "${Green}Xcode is successfully installed.${Color_Off}"
fi

echo ''

# vim:set syn=sh foldmethod=marker foldlevel=0:
