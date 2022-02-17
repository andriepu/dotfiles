config_path="$HOME/.config"

# 1. Preparation {{{

\mkdir -p $config_path

# }}}

# 2. Create symlink to config folder {{{

create_symlink "$DOTFILES_DIR/install/setup/kitty/kitty_config" "$HOME/.config/kitty"

# }}}

# vim:set syn=sh foldmethod=marker foldlevel=0:
