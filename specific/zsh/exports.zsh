# RVM {{{
#
export PATH="$PATH:$HOME/.rvm/bin"
#
# }}}

# Node Modules {{{
#
export PATH=./node_modules/.bin:$PATH
#
# }}}

# GPG {{{
#
export GPG_TTY=${tty}
#
# }}}

# Brew {{{
#
export LC_ALL=en_US.UTF-8
#
# }}}

# Tmuxinator {{{
#
# set tmuxinator projects folder
export TMUXINATOR_CONFIG=$DOTFILES_DIR/specific/tmuxinator_projects
#
# # }}}

# vim:set syn=sh foldmethod=marker foldlevel=0:
