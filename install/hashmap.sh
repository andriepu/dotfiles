#!/bin/bash

namespace=DOTFILES

hclear() {
  # backslash is used to prevent using alias
  \rm -f /tmp/hashmap.$namespace.$1
}

hput() {
  echo "$2 $3" >> "/tmp/hashmap.$namespace.$1"
}

hget() {
  grep "^$2 " "/tmp/hashmap.$namespace.$1" | awk '{ print substr($0, index($0, $2)) };'
}

hclear_all() {
  # backslash is used to prevent using alias
  \rm -rf /tmp/hashmap.$namespace*
}
