source "$DOTFILES_DIR/imports/index.sh"

setup_app () {
  local zsh_path=/usr/local/bin/zsh
  local DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

  local rcfile=$(get_rc_file)
  local scripts=(
    "DOTFILES_DIR=$(DOTFILES_DIR)"
    "source $DOTFILES_DIR/install/core/zsh/config/index.sh"
  )

  # Update $HOME/.zshrc
  for i in ${!scripts[@]}; do
    append_to_file "${scripts[$i]}" "$rcfile"
  done

  # Allow zsh path to set as SHELL
  append_to_file "$zsh_path" "/etc/shells" "root"
  chsh -s $zsh_path

  # Finishing
  printf "${Yellow}You need to 'Logout' before continue installing another Applications${Color_Off}\n"
  echo

  waiting_for_response
  exit 0

  echo
}

install_app () {
  brew install zsh
}

if ask_for "${Blue}Install ${Yellow}Homebrew${Color_Off}"; then
  install_app

  echo -e "${Green}Zsh is successfully installed.${Color_Off}"
fi

if ask_for "${Blue}Setup ${Yellow}Homebrew${Color_Off}"; then
  setup_app

  echo -e "${Green}Zsh is successfully set.${Color_Off}"
fi

echo

# vim:set syn=sh foldmethod=marker foldlevel=0:
