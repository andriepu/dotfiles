# General {{{
#
# Enable aliases to be sudo’ed
alias sudo="sudo "

alias r!="source ~/.zshrc; echo 'zshrc reloaded'"

alias cleanupds="find . -type f -name '*.DS_Store' -ls -delete"
#
# }}}

# Navigations {{{
#
# shorten cd syntax
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~"
alias -- -="cd -"
#
# }}}

# File Manager {{{
#
# verbose process
alias mv='mv -v'
alias rm='rm -i -v'
alias cp='cp -v'

# mkdir: always create parent-dirs, if needed
alias mkdir="mkdir -p"
alias md="mkdir"

# colorize output, add file type indicator, and put sizes in human readable format
alias ls='ls -GFh'
# same as above, but in long listing format
alias ll='ls -GFhl'
#
# }}}

# File Edit {{{
#
alias ehosts="sudo $EDITOR /etc/hosts"
alias ezplug="$EDITOR $DOTFILES_DIR/zsh/plugins.zsh"
alias ealias="$EDITOR $DOTFILES_DIR/zsh/aliases.zsh"
alias espalias="$EDITOR $DOTFILES_DIR/specific/zsh/aliases.zsh"
#
# }}}

# vim:set syn=sh foldmethod=marker foldlevel=0:
