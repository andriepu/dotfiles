# Common {{{

string_to_array() {
  local arr=()

  IFS="," read -r -a arr <<< "$1"

  for item in "${arr[@]}"
  do
    echo "$item"
  done
}

# }}}

# Print {{{

print_in_yellow() {
  printf "${Yellow}$1${Color_Off}"
}

print_in_green() {
  printf "${Green}$1${Color_Off}"
}

print_in_blue() {
  printf "${Blue}$1${Color_Off}"
}

print_in_red() {
  printf "${Red}$1${Color_Off}"
}

print_in_purple() {
  printf "${Purple}$1${Color_Off}"
}

print_in_white() {
  printf "${White}$1${Color_Off}"
}

print_apps_list() {
  for app in $(string_to_array $1)
  do
    for ((i=0;i<${2-0};i++))
    do
      printf " "
    done

    if is_app_exists "$app";
    then
      print_in_green "• $app\n"
    else
      print_in_yellow "• $app\n"
    fi

    if [[ $(hget depsPkg $app) ]];
    then
      print_apps_list $(hget depsPkg $app) "$((${2-0} + 2))"
    fi
  done
}

# }}}

# User Confirmation {{{

ask_for_install() {
  local reply=''

  if ! is_app_exists $1;
  then
    print_in_blue "[?] Install ${Yellow}$1${Color_Off} (y/n) "
  else
    print_in_blue "[?] Re-install ${Green}$1${Color_Off} (y/n) "
  fi

  read reply

  [[ "$reply" =~ ^[Yy]([eE][sS])?$ ]]
}

waiting_for_response() {
  read -rsn1 -p"» Press any key to continue..."; echo
  echo
}

# }}}

# Validation {{{

is_app_exists () {
  if [[ ! $(hget checkExist $1) ]];
  then
    print_in_red "[abort] existence checking script for "
    print_in_green $1
    print_in_red " is not found!\n"

    hclear_all
    exit 0
  fi

  [[ $(eval $(hget checkExist $1)) ]]
}

# }}}

# Installation {{{

install_app() {
  for dep in $(string_to_array $(hget depsPkg $1))
  do
    if ask_for_install $dep;
    then
      install_app $dep
    fi
  done

  if is_app_exists "$1";
  then
    if [[ $(hget reinstallPkg $1) ]];
    then
      eval $(hget reinstallPkg $1)
    fi
  else
    if [[ $(hget installPkg $1) ]];
    then
      echo $(hget installPkg $1)
      echo
      eval $(hget installPkg $1)
    else
      print_in_red "[abort] installation script for "
      print_in_green $1
      print_in_red " is not found!\n"

      hclear_all
      exit 0
    fi
  fi

  if [[ $(hget setupPkg $1) ]];
  then
    printf "\n"
    eval $(hget setupPkg $1)
  fi

  printf "\n"
}

create_symlink() {
  local target=$2
  local source=$1

  if [[ -e $target && ! -L $target ]];
  then
    echo -e "${Yellow}Backing up your $target ${Color_Off}"
    \mv "$target" "$DOTFILES_DIR/_backups/$(basename $target)-$(date +"%Y%m%d%H%M%S").backup"
  fi

  if [[ -d $target && -L $target ]];
  then
    \rm $target
  fi

  echo -e "${Yellow}Creating symlink${Color_Off}"
  ln -svf "$source" "$target"
}

append_to_file() {
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

# }}}

# vim: set syn=sh foldmethod=marker foldlevel=0:
