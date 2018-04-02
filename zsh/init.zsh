if [ command -v compdef >/dev/null 2>&1 ];
then
  autoload -Uz compinit

  if [[ -n ~/.zcompdump(#qN.mh+24) ]]; then
    compinit;
  else
    compinit -C;
  fi;
fi

