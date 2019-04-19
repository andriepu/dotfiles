# Plugins {{{
#
zplug 'zplug/zplug', hook-build:'zplug --self-manage'
zplug "tmuxinator/tmuxinator", from:github, use:"completion/tmuxinator.zsh"
zplug "zdharma/fast-syntax-highlighting"
zplug "zsh-users/zsh-autosuggestions"
# zplug "djui/alias-tips"
zplug "zsh-users/zsh-history-substring-search"
zplug "Tarrasch/zsh-bd"
zplug "ael-code/zsh-colored-man-pages"
zplug "lib/completion", from:oh-my-zsh
#
# }}}

# Themes {{{
#
# zplug "themes/robbyrussell", from:oh-my-zsh
# zplug 'themes/sorin', from:oh-my-zsh
# zplug 'themes/agnoster', from:oh-my-zsh
# zplug 'themes/bira', from:oh-my-zsh
# zplug jamiewilson/predawn-shell, use:Predawn.zsh-theme, from:github, as:theme
zplug "$DOTFILES_DIR/themes/zsh", use:"dayspring.zsh-theme", from:local, as:theme
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

# vim mode
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

# styling
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND='fg=green,bold'
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_NOT_FOUND='fg=green'

# unique results only
HISTORY_SUBSTRING_SEARCH_ENSURE_UNIQUE=true
#
# }}}

# Plugins - zsh-autosuggestions {{{
#
bindkey '^P' autosuggest-accept
#
# }}}

# Plugins - completion {{{
#
# use the vi navigation keys in menu completion
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
#
# }}}

# vim:set foldmethod=marker foldlevel=0:
