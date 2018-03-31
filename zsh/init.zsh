if [ command -v compdef >/dev/null 2>&1 ];
then
  autoload -Uz compinit

  if [[ -n ~/.zcompdump(#qN.mh+24) ]]; then
    compinit;
  else
    compinit -C;
  fi;
fi

# Use vim binding
bindkey -v
# jk as <ESC>
bindkey -M viins 'jk' vi-cmd-mode
