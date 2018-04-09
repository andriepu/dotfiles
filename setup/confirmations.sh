app_is_exists () {
  [[ $(eval $(hget checkExist $1)) ]]
}

check_outdated() {
  if [[ $OSTYPE =~ darwin* ]];
  then
    OUTDATED=$(eval "$(hget checkOutdated $1)")
    TMP_CHECK_OUTDATED=$OUTDATED

    if app_is_outdated;
    then
      OUTDATED=$TMP_CHECK_OUTDATED

      printf "Your $1 seems a little bit outdated. "
      printf "\n${Purple}-> $OUTDATED${Color_Off}"
      printf "\n\n"
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

print_in_red() {
  printf "${Red}$1 ${Color_Off}"
}

print_in_purple() {
  printf "${Purple}$1 ${Color_Off}"
}

ask_for_confirmation() {
  print_in_yellow "[?] $1 (y/n) "
  read REPLY
}

waiting_for_response() {
  read -rsn1 -p"» Press any key to continue..."; echo
  echo
}

answer_is_yes() {
  TMP_REPLY=$REPLY
  REPLY=""

  [[ "$TMP_REPLY" =~ ^[Yy]([eE][sS])?$ ]]
}

app_is_outdated() {
  TMP_OUTDATED=$OUTDATED
  OUTDATED=""

  [[ $TMP_OUTDATED ]]
}

ask_for_install() {
  OUTDATED=""
  if app_is_exists $1;
  then
    if [ "$2" == "check_update:true" ];
    then
      check_outdated $1
    fi
  else
    ask_for_confirmation "Install now"
  fi
}

# vim: set syn=sh foldmethod=marker foldlevel=0:
