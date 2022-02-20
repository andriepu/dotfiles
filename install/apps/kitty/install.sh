source "$DOTFILES_DIR/imports/index.sh"

setup_app () {
  # Preparation
  \mkdir -p $HOME/.config

  # Create symlink
  create_symlink "$DOTFILES_DIR/install/apps/kitty/config" "$HOME/.config/kitty"
}

install_app () {
  curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
}

if ask_for "${Blue}Install ${Yellow}Kitty${Color_Off}"; then
  install_app

  echo -e "${Green}Kitty is installed.${Color_Off}"
fi

if ask_for "${Blue}Setup ${Yellow}Kitty${Color_Off}"; then
  setup_app

  echo -e "${Green}Kitty is set.${Color_Off}"
fi
echo

# vim:set syn=sh foldmethod=marker foldlevel=0:
