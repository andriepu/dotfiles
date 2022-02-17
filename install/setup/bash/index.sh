BASE_PATH="/usr/local/bin/bash"

# 1. Set default $SHELL {{{

if [[ ! $SHELL == $BASE_PATH ]];
then
  print_in_yellow "Setting $BASE_PATH as yout default \$SHELL\n"

  if ! grep -Fxq $BASE_PATH /etc/shells;
  then
      append_to_file "$BASE_PATH" "/etc/shells" "root"
  fi

  chsh -s $BASE_PATH
  echo
fi

# 2. Sourcing {{{

SOURCING_CONTENT="source $DOTFILES_DIR/install/setup/bash/shell_config/index.sh"

append_to_file "$SOURCING_CONTENT" "$HOME/.bash_profile"

print_in_yellow "You need to "Logout" before continue installing another Applications\n"
echo

waiting_for_response
exit 0

# }}}

# vim:set syn=sh foldmethod=marker foldlevel=0:
