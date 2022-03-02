#!/usr/bin/env fish

source "$HOME/.config/fish/_config/1-env._homebrew.fish"
source "$HOME/.config/fish/_config/1-env._node.fish"
source "$HOME/.config/fish/_config/1-env._exa.fish"

# Set language {{{

set -gx LANG "en_US.UTF-8"
set -gx LC_ALL "en_US.UTF-8"

# }}}

# Set editor {{{

set -gx EDITOR nvim
set -gx VISUAL $EDITOR

# }}}

# vim:set foldmethod=marker foldlevel=0:
