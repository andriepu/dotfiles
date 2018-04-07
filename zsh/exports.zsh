# General {{{
#
export EDITOR="vim"

# Default is 40 (0.4 seconds).
# We make it a little bit faster
export KEYTIMEOUT=10
#
# }}}

# Zplug {{{
#
if [[ $OSTYPE =~ darwin* ]];
then
  export ZPLUG_HOME=/usr/local/opt/zplug
else
  export ZPLUG_HOME=$HOME/.zplug
fi

source $ZPLUG_HOME/init.zsh
#
# }}}

# Tmuxinator {{{
#
# set tmuxinator projects folder
export TMUXINATOR_CONFIG=$DOTFILES_DIR/specific/tmuxinator_projects
#
# # }}}

# vim:set syn=sh foldmethod=marker foldlevel=0:
