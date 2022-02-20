is_exist () {
  [ ! -z ls $HOME/Library/Fonts | grep "Fantasque Sans Mono" ]
}

install_app () {
  brew tap homebrew/cask-fonts
  brew install --cask font-fantasque-sans-mono-nerd-font
}

if ask_for "${Blue}Install ${Yellow}Font: Fantasque${Color_Off}"; then
  install_app

  echo -e "${Green}Font is installed.${Color_Off}"
fi

echo

# vim:set syn=sh foldmethod=marker foldlevel=0:
