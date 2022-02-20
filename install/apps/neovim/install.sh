source "$DOTFILES_DIR/imports/index.sh"

setup_app () {
  # Preparation
  \mkdir -p $HOME/.config

  # Create symlink
  create_symlink "$DOTFILES_DIR/install/apps/neovim/config" "$HOME/.config/nvim"

  # Install Plugin Management
  if [ ! -d $HOME/.local/share/nvim/site/pack/packer ]
  then
    git clone --depth 1 https://github.com/wbthomason/packer.nvim\
     ~/.local/share/nvim/site/pack/packer/start/packer.nvim
  fi
}

install_app () {
  brew install neovim
}

if ask_for "${Blue}Install ${Yellow}Neovim${Color_Off}"; then
  install_app

  echo -e "${Green}Neovim is installed.${Color_Off}"
fi

if ask_for "${Blue}Setup ${Yellow}Neovim${Color_Off}"; then
  setup_app

  echo -e "${Green}Neovim is set.${Color_Off}"
fi
echo

# vim:set syn=sh foldmethod=marker foldlevel=0:
