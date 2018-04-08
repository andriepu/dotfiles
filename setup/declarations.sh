DEP_LIST="rubygems•homebrew"

# List of files to be installed
INSTALL_LIST=(
  zsh
  tmux
  vim
)

# Remove current temporary files
hclear checkExist
hclear checkOutdated
hclear upgradePkg
hclear installPkg
hclear installDepNames
hclear installExtNames
hclear setupPkg

hput setupPkg zsh "source $DOTFILES_DIR/setup/setup-zsh.sh"
hput setupPkg tmux "source $DOTFILES_DIR/setup/setup-tmux.sh"
hput setupPkg vim "source $DOTFILES_DIR/setup/setup-vim.sh"

hput installExtNames zsh "zplug"
hput installExtNames tmux "tmuxinator"
hput installExtNames vim "the-silver-searcher•vim-plug"

hput installDepNames vim "curl"

if [[ $OSTYPE =~ darwin* ]];
then
  # OSX
  get_local_app() {
    BREW_LIST="$(brew list)"
    BREW_OUTDATED="$(brew outdated --verbose)"
    GEM_LIST="$(gem list)"
    GEM_OUTDATED="$(gem outdated)"
  }

  # ---
  hput checkOutdated zsh 'echo "$BREW_OUTDATED" | grep zsh'
  hput checkOutdated tmux 'echo "$BREW_OUTDATED" | grep tmux'
  hput checkOutdated vim 'echo "$BREW_OUTDATED" | grep vim'
  hput checkOutdated zplug 'echo "$BREW_OUTDATED" | grep zplug'
  hput checkOutdated haproxy 'echo "$BREW_OUTDATED" | grep haproxy'
  hput checkOutdated tmuxinator 'echo "$GEM_OUTDATED" | grep tmuxinator'
  # ---
  hput checkExist homebrew "which brew"
  hput checkExist rubygems "which gem"

  hput checkExist zsh 'echo "$BREW_LIST" | grep zsh'
  hput checkExist tmux 'echo "$BREW_LIST" | grep tmux'
  hput checkExist vim 'echo "$BREW_LIST" | grep vim'

  hput checkExist zplug 'echo "$BREW_LIST" | grep zplug'
  hput checkExist tmuxinator 'echo "$GEM_LIST" | grep tmuxinator'

  hput checkExist curl "which curl"
  hput checkExist the-silver-searcher 'echo "$BREW_LIST" | grep the_silver_searcher'
  hput checkExist vim-plug 'ls $HOME/.vim/autoload | grep plug.vim'
  # ---
  hput upgradePkg zsh "brew upgrade zsh"
  hput upgradePkg tmux "brew upgrade tmux"
  hput upgradePkg vim "brew upgrade vim --override-system-vi"
  hput upgradePkg zplug "brew upgrade zplug"
  hput upgradePkg tmuxinator "gem install tmuxinator"
  # ---
  hput installPkg homebrew '/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"'
  hput installPkg rubygems "brew install ruby"

  hput installPkg zsh "brew install zsh"
  hput installPkg tmux "brew install tmux"
  hput installPkg vim "brew install vim --override-system-vi"

  hput installPkg curl "brew install curl"

  hput installPkg zplug "brew install zplug"
  hput installPkg tmuxinator "gem install tmuxinator"

  hput installPkg vim-plug "curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  hput installPkg "the-silver-searcher" "brew install the_silver_searcher"

elif [[ $OSTYPE =~ linux* ]];
then
  echo "Not yet"
  exit 0;
  # # LINUX
  # hput installDep curl "sudo apt-get install curl"
  # hput installDep gem "sudo apt-get install ruby"

  # hput installExt zsh "rm -rfd $HOME/.zplug && curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh| zsh"
  # hput installExt tmux "sudo gem install tmuxinator"
  # hput installExt vim "curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"

  # hput installPkg zsh "sudo apt-get install zsh"
  # hput installPkg tmux "sudo apt-get install tmux"
  # hput installPkg vim "sudo apt-get install vim"

  # hput upgradePkg zsh "sudo apt-get install --only-upgrade zsh"
  # hput upgradePkg tmux "sudo apt-get install --only-upgrade tmux"
  # hput upgradePkg vim "sudo apt-get install --only-upgrade vim"
else
  echo "Sorry, your Operating System seems to be not supported."
  exit 0;
fi

string_to_array() {
  ARRAY=()
  IFS="•" read -r -a ARRAY <<< "$1"
}

hclear promptInstall

print_app_in_li() {
  SHOULD_PROMPT=0
  string_to_array "$1"
  for app in "${ARRAY[@]}"
  do
    if app_is_exists "$app";
    then
      tmp=$(eval $(hget checkOutdated $app))
      if [[ $tmp ]];
      then
        SHOULD_PROMPT=$((SHOULD_PROMPT + 1))
        echo -e "${BGreen} • $tmp"
      else
        echo -e "${Green} • $app"
      fi
    else
      SHOULD_PROMPT=$((SHOULD_PROMPT + 1))
      echo -e "${Red} • $app"
    fi
  done

  hput promptInstall "$2" "$SHOULD_PROMPT"

  printf "\n${Color_Off}"
}

