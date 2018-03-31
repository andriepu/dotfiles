DOTFILES_DIR=~/dotfiles

# Zsh {{{
#
source $DOTFILES_DIR/zsh/init.zsh
source $DOTFILES_DIR/zsh/exports.zsh
source $DOTFILES_DIR/zsh/aliases.zsh
source $DOTFILES_DIR/zsh/plugins.zsh
#
# }}}

# Tmuxinator {{{
#
# set tmuxinator projects folder
export TMUXINATOR_CONFIG=$DOTFILES_DIR/workspace/tmuxinator

source $DOTFILES_DIR/.tmuxinator.conf
#
# # }}}

# vim:set foldmethod=marker foldlevel=0:
