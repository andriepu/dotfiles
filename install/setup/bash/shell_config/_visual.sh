# PS1 {{{
function get_ps1_text {
  local ps1=""

  ps1+="$COLOR_WHITE["
  ps1+="$COLOR_CYAN\w"
  ps1+="$COLOR_WHITE]"

  ps1+="\$([ \$(git_branch) ] && echo \$(git_color)  \$(git_branch))"

  ps1+="$COLOR_WHITE ➾ $COLOR_RESET"

  echo -e $ps1
}

if [ ! $EUID == 0 ]; then
  export PS1="$(get_ps1_text)"
else
  export PS1="[\u@\w] # "
fi

# }}}
