COLOR_RED='\e[0;31m'
COLOR_YELLOW='\e[0;33m'
COLOR_GREEN='\e[0;32m'
COLOR_OCHRE='\e[38;5;95m'
COLOR_PURPLE='\e[0;35m'
COLOR_CYAN='\e[0;36m'
COLOR_BLUE='\e[0;34m'
COLOR_WHITE='\e[0;37m'
COLOR_RESET='\e[m'

function git_color {
  local git_status="$(git status 2> /dev/null)"

  if [[ $git_status == *"Your branch is ahead of"* ]]; then
    echo -e $COLOR_BLUE
  elif [[ $git_status == *"nothing to commit"* ]]; then
    echo -e $COLOR_GREEN
  else
    echo -e $COLOR_YELLOW
  fi
}

function git_branch {
  local git_status="$(git status 2> /dev/null)"
  local on_branch="On branch ([^${IFS}]*)"
  local on_commit="HEAD detached at ([^${IFS}]*)"

  if [[ $git_status =~ $on_branch ]]; then
    local branch=${BASH_REMATCH[1]}
    echo "$branch"
  elif [[ $git_status =~ $on_commit ]]; then
    local commit=${BASH_REMATCH[1]}
    echo "$commit"
  fi
}
