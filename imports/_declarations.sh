DEPENDENCIES_LIST="homebrew,zsh,nvm"

INSTALL_LIST="kitty,neovim"

# Preparation {{{
BREW_LIST="$(echo $(brew list))"

hclear checkExist
hclear installPkg
hclear reinstallPkg
hclear depsPkg 
hclear setupPkg
# }}}

# font:fantasque {{{
hput checkExist font:fantasque "ls $HOME/Library/Fonts | grep \"Fantasque Sans Mono\""
hput installPkg font:fantasque ""
# }}}

# neovim {{{
hput checkExist neovim "which nvim"
hput installPkg neovim "brew install neovim"
hput reinstallPkg neovim "brew reinstall neovim"
hput depsPkg neovim "font:fantasque,nvm,fd,ripgrep,npm:volar"
hput setupPkg neovim "source $DOTFILES_DIR/install/apps/neovim/index.sh"
# }}}

# fd {{{
hput checkExist fd "which fd"
hput installPkg fd "brew install fd"
hput reinstallPkg fd "brew reinstall fd"
# }}}

# ripgrep {{{

hput checkExist ripgrep "which rg"
hput installPkg ripgrep "brew install ripgrep"
hput reinstallPkg ripgrep "brew reinstall ripgrep"

# }}}

# npm:volar {{{
hput checkExist npm:volar "which volar-server"
hput installPkg npm:volar "npm install -g @volar/server"
hput reinstallPkg npm:volar "npm install -g @volar/server" 
# }}}

# vim: set syn=sh foldmethod=marker foldlevel=0:
