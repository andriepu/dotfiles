INSTALL_LIST="bash,kitty,neovim"

# Preparation {{{
BREW_LIST="$(echo $(brew list))"

hclear checkExist
hclear installPkg
hclear reinstallPkg
hclear depsPkg 
hclear setupPkg
# }}}

# bash {{{
hput checkExist bash "echo $BREW_LIST | grep bash"
hput installPkg bash "brew install bash"
hput setupPkg bash "source $DOTFILES_DIR/install/setup/bash/index.sh"
# }}}

# kitty {{{
hput checkExist kitty "ls /Applications | grep kitty"
hput installPkg kitty "curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin"
hput reinstallPkg kitty "rm -rf /Applications/kitty.app; curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin"
hput depsPkg kitty "font:fantasque"
hput setupPkg kitty "source $DOTFILES_DIR/install/setup/kitty/index.sh"
# }}}

# font:fantasque {{{
hput checkExist font:fantasque "ls $HOME/Library/Fonts | grep \"Fantasque Sans Mono\""
hput installPkg font:fantasque "brew tap homebrew/cask-fonts; brew install --cask font-fantasque-sans-mono-nerd-font"
# }}}

# neovim {{{
hput checkExist neovim "which nvim"
hput installPkg neovim "brew install neovim"
hput reinstallPkg neovim "brew reinstall neovim"
hput depsPkg neovim "font:fantasque,nvm,fd,ripgrep,npm:volar"
hput setupPkg neovim "source $DOTFILES_DIR/install/setup/neovim/index.sh"
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

# nvm {{{
hput checkExist nvm "echo $BREW_LIST | grep -F nvm"
hput installPkg nvm "brew install nvm"
hput reinstallPkg nvm "brew reinstall nvm"
hput setupPkg nvm "source $DOTFILES_DIR/install/setup/nvm/index.sh"
# }}}

# npm:volar {{{
hput checkExist npm:volar "which volar-server"
hput installPkg npm:volar "npm install -g @volar/server"
hput reinstallPkg npm:volar "npm install -g @volar/server" 
# }}}

# vim: set syn=sh foldmethod=marker foldlevel=0:
