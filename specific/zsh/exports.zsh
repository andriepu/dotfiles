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

# NVM {{{
#
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
# }}}

# MySQL {{{
#
export PATH="/usr/local/opt/mysql-client/bin:$PATH"
#
# }}}
# vim:set syn=sh foldmethod=marker foldlevel=0:
