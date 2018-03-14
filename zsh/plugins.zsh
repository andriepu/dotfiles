# Plugin Manager - Zplug {{{
#
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh
#
# }}}

# Plugins {{{
#
zplug "zdharma/fast-syntax-highlighting"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-autosuggestions"
zplug "djui/alias-tips"
zplug "Tarrasch/zsh-bd"
zplug "ael-code/zsh-colored-man-pages"
zplug "johnhamelink/rvm-zsh"
zplug "lib/clipboard", from:oh-my-zsh, if:"[[ $OSTYPE == *darwin* ]]"
zplug "plugins/git", from:oh-my-zsh
#
# }}}

# Themes {{{
#
# zplug "themes/robbyrussell", from:oh-my-zsh
zplug 'themes/sorin', from:oh-my-zsh
#
# }}}

# Installation {{{
#
# install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# source plugins and add commands to $PATH
zplug load
# }}}

# Plugins - zsh-history-substring-search {{{
#
bindkey "^[[A" history-substring-search-up
bindkey "^[[B" history-substring-search-down
#
# }}}

# Plugins - zsh-history-substring-search {{{
#
bindkey '^P' autosuggest-accept
#
# }}}

# vim:set foldmethod=marker foldlevel=0:
