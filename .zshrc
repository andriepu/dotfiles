DOTFILES_DIR=~/dotfiles

# Zsh {{{
#
source $DOTFILES_DIR/zsh/init.zsh
source $DOTFILES_DIR/zsh/colors.zsh
source $DOTFILES_DIR/zsh/exports.zsh
source $DOTFILES_DIR/zsh/functions.zsh
source $DOTFILES_DIR/zsh/aliases.zsh
source $DOTFILES_DIR/zsh/plugins.zsh

# Values on these files should be changed based on your local environtment
source $DOTFILES_DIR/specific/zsh/exports.zsh
source $DOTFILES_DIR/specific/zsh/functions.zsh
source $DOTFILES_DIR/specific/zsh/aliases.zsh
#
# }}}

# Tmuxinator {{{
#
# set tmuxinator projects folder
export TMUXINATOR_CONFIG=$DOTFILES_DIR/specific/tmuxinator_projects

source $DOTFILES_DIR/.tmuxinator
#
# # }}}

# Should be written last
source $DOTFILES_DIR/zsh/nyan.zsh

# vim:set foldmethod=marker foldlevel=0:
