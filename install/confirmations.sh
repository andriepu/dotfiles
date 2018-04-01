command_exists () {
  command -v "$1" >/dev/null 2>&1
}

print_in_yellow() {
  printf "${Yellow}$1 ${Color_Off}"
}

print_in_green() {
  printf "${Green}$1 ${Color_Off}"
}

print_in_blue() {
  printf "${Blue}$1 ${Color_Off}"
}

ask_for_confirmation() {
  print_in_yellow "[?] $1 (y/n) "
  read REPLY
}

answer_is_yes() {
  TMP_REPLY=$REPLY
  REPLY=""

  [[ "$TMP_REPLY" =~ ^[Yy]([eE][sS])?$ ]]
}

ask_for_install() {
  if command_exists "$1";
  then
    print_in_green "$1 is installed. OK"
    printf "\n"
    ask_for_confirmation "But, do you want to try upgrading your $1"
  else
    ask_for_confirmation "$1 is not installed. Install now"
  fi
}

# vim: set syn=sh foldmethod=marker foldlevel=0:
