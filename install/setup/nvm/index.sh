# 1. Sourcing {{{

SOURCING_CONTENT="source $DOTFILES_DIR/install/setup/nvm/shell_config/index.sh"

append_to_file "$SOURCING_CONTENT" "$HOME/.bash_profile"

source $HOME/.bash_profile

# }}}

# 2. Install Latest Node {{{

nvm install --lts

# }}}

# 3. Enable yarn {{{

corepack enable
yarn set version stable

# }}}

# vim:set syn=sh foldmethod=marker foldlevel=0:
