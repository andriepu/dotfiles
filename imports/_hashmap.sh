namespace=DOTFILES

hclear() {
  # backslash is used to prevent using alias
  \rm -f /tmp/hashmap.$namespace.$1
}

hput() {
  local key=$2
  local value=$3

  # if [[ $1 == "checkExist" ]];
  # then
  #   echo "in hput $value"
  #   echo
  # fi

  echo "$key $value" >> "/tmp/hashmap.$namespace.$1"
}

hget() {
  if test -f "/tmp/hashmap.$namespace.$1";
  then
    grep "^$2 " "/tmp/hashmap.$namespace.$1" | sed -e "s/^$2//g"
  fi
}

hclear_all() {
  # backslash is used to prevent using alias
  \rm -rf /tmp/hashmap.$namespace*
}
