command_exists () {
  command -v "$1" >/dev/null 2>&1
}

check_outdated() {
  if [[ $OSTYPE =~ darwin* ]];
  then
    OUTDATED="$(brew outdated --verbose | grep $1)"

    if [ -n "$OUTDATED" ];
    then
      printf "Your $1 seems a little bit outdated. "
      printf "\n${Purple}-> $OUTDATED${Color_Off}"
      printf "\n"
      ask_for_confirmation "Update now"
    fi
  fi
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

waiting_for_response() {
  read -rsn1 -p"» Press any key to continue..."; echo
}

answer_is_yes() {
  TMP_REPLY=$REPLY
  REPLY=""

  [[ "$TMP_REPLY" =~ ^[Yy]([eE][sS])?$ ]]
}

ask_for_install() {
  if command_exists $1;
  then
    print_in_green "$1 is installed. OK"
    printf "\n"

    if [ "$2" == "check_update:true" ];
    then
      check_outdated $1
    fi
  else
    ask_for_confirmation "$1 is not installed. Install now"
  fi
}

# vim: set syn=sh foldmethod=marker foldlevel=0:
