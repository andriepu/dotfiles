# Plugins {{{
#
zplug 'zplug/zplug', hook-build:'zplug --self-manage'
zplug "zdharma/fast-syntax-highlighting"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-autosuggestions"
zplug "djui/alias-tips"
zplug "Tarrasch/zsh-bd"
zplug "ael-code/zsh-colored-man-pages"
zplug "johnhamelink/rvm-zsh"
zplug "lib/clipboard", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
#
# }}}

# Themes {{{
#
# zplug "themes/robbyrussell", from:oh-my-zsh
# zplug 'themes/sorin', from:oh-my-zsh
# zplug 'themes/agnoster', from:oh-my-zsh
# zplug 'themes/bira', from:oh-my-zsh

# zplug maniat1k/birame, use:birame.zsh-theme, from:github, as:theme
zplug "$DOTFILES_DIR/zsh/themes", use:"ardh.zsh-theme", from:local, as:theme
# zplug jamiewilson/predawn-shell, use:Predawn.zsh-theme, from:github, as:theme
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
# }}}

# source plugins and add commands to $PATH
zplug load

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
