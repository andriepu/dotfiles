# Config {{{

get_rc_file () {
  echo "$HOME/.zshrc"
}

# }}}

# User Confirmation {{{

ask_for () {
  local reply=''
  local text="$1"

  printf "$text (Y/n) "

  read reply

  [[ "$reply" =~ ^[Yy]([eE][sS])?$ ]]
}

# }}}

# Installation {{{

create_symlink() {
  local target=$2
  local source=$1

  if [[ -e $target && ! -L $target ]];
  then
    \mv "$target" "$DOTFILES_DIR/_backups/$(basename $target)-$(date +"%Y%m%d%H%M%S").backup"
  fi

  if [[ -d $target && -L $target ]];
  then
    \rm $target
  fi

  ln -svf "$source" "$target"
}

append_to_file () {
  local content=$1
  local file=$2

  if ! grep -Fxq "$content" $file
  then
    if [ "$3" == "root" ];
    then
      sudo sh -c "echo $content >> $file"
    else
      echo $content >> $file
    fi
  fi
}

waiting_for_response () {
  read -rsn1 -p"» Press any key to continue..."; echo
  echo
}

# }}}j

# vim: set syn=sh foldmethod=marker foldlevel=0:
