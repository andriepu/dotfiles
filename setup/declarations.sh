# List of files to be symlinked in $HOME
SYMLINK_LIST=(
  .zshrc
  .vimrc
  .tmux.conf
)

# List of files to be installed
INSTALL_LIST=(
  zsh
  tmux
  vim
)

DEP_LIST=(
  curl
)

# Remove current temporary files
hclear installDep
hclear installExt
hclear installExtNames
hclear installPkg
hclear upgradePkg

hput installExtNames zsh "zplug;coba"
hput installExtNames tmux "tmuxinator"
hput installExtNames vim "vim-plug"

if [[ $OSTYPE =~ darwin* ]];
then
  # OSX
  hput installDep curl "brew install curl"

  hput installExt zsh "brew install zplug"
  hput installExt tmux "gem install tmuxinator"
  hput installExt vim "curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"

  hput installPkg zsh "brew install zsh"
  hput installPkg tmux "brew install tmux"
  hput installPkg vim "brew install vim --override-system-vi"

  hput upgradePkg zsh "brew upgrade zsh"
  hput upgradePkg tmux "brew upgrade tmux"
  hput upgradePkg vim "brew upgrade vim --override-system-vi"
elif [[ $OSTYPE =~ linux* ]];
then
  # LINUX
  hput installDep curl "sudo apt-get install curl"

  hput installExt zsh "curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh| zsh"
  hput installExt tmux "gem install tmuxinator"
  hput installExt vim "curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"

  hput installPkg zsh "sudo apt-get install zsh"
  hput installPkg tmux "sudo apt-get install tmux"
  hput installPkg vim "sudo apt-get install vim"

  hput upgradePkg zsh "sudo apt-get install --only-upgrade zsh"
  hput upgradePkg tmux "sudo apt-get install --only-upgrade tmux"
  hput upgradePkg vim "sudo apt-get install --only-upgrade vim"
fi


print_install_ext_names_li() {
  extensions=$(hget installExtNames $1)
  printf "${Green}${Bold}  - "
  printf "${extensions/;/\\n  - }"
  printf "\n\n${Color_Off}"
}
