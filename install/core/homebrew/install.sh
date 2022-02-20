source "$DOTFILES_DIR/imports/index.sh"

setup_app () {
  local rcfile=$(get_rc_file)
  local scripts=(
    "source $DOTFILES_DIR/install/core/homebrew/config/index.sh" 
  )

  for i in ${!scripts[@]}; do
    append_to_file "${scripts[@]}" "$rcfile"
  done

  source "$rcfile"
}

install_app () {
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
}

if ask_for "${Blue}Install ${Yellow}Homebrew${Color_Off}"; then
  install_app

  echo -e "${Green}Homebrew is installed.${Color_Off}"
fi

if ask_for "${Blue}Setup ${Yellow}Homebrew${Color_Off}"; then
  setup_app

  echo -e "${Green}Homebrew is set.${Color_Off}"
fi
echo

# vim:set syn=sh foldmethod=marker foldlevel=0:
