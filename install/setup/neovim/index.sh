config_path="$HOME/.config"

# 1. Preparation {{{

\mkdir -p $config_path

# }}}

# 2. Create symlink to config folder {{{

create_symlink "$DOTFILES_DIR/install/setup/neovim/neovim_config" "$HOME/.config/nvim"

# }}}

# 3. Install Plugin Management {{{

if [ ! -d $HOME/.local/share/nvim/site/pack/packer ]
then
  git clone --depth 1 https://github.com/wbthomason/packer.nvim\
   ~/.local/share/nvim/site/pack/packer/start/packer.nvim
fi

# }}}

# 4. Load plugins {{{

nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'

echo

# }}}

# vim:set syn=sh foldmethod=marker foldlevel=0:
