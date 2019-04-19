DOTFILES_DIR=$HOME/Playground/Side-Project/dotfiles

source $DOTFILES_DIR/zsh/colors.zsh
source $DOTFILES_DIR/zsh/exports.zsh
source $DOTFILES_DIR/zsh/functions.zsh
source $DOTFILES_DIR/zsh/bindings.zsh
source $DOTFILES_DIR/zsh/aliases.zsh # require: exports.zsh
source $DOTFILES_DIR/zsh/plugins.zsh # require: exports.zsh

# Values on these files should be changed based on your local environtment
source $DOTFILES_DIR/specific/zsh/exports.zsh
source $DOTFILES_DIR/specific/zsh/functions.zsh
source $DOTFILES_DIR/specific/zsh/aliases.zsh

# Should be written last
# source $DOTFILES_DIR/zsh/nyan.zsh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
