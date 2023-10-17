source "$HOME/.config/fish/_config/2-abbr._git.fish"
source "$HOME/.config/fish/_config/2-abbr._openvpn.fish"
source "$HOME/.config/fish/_config/2-abbr._work.fish"
source "$HOME/.config/fish/_config/2-abbr._kubectl.fish"
source "$HOME/.config/fish/_config/2-abbr._ssh.fish"
source "$HOME/.config/fish/_config/2-abbr._pnpm.fish"

# Editor {{{

abbr -ag v 'nvim'
abbr -ag vim 'nvim .'

abbr -ag efd "nvim $HOME/.dotfiles/conf/fd"
abbr -ag efish "nvim $HOME/.dotfiles/conf/fish/_config/"
abbr -ag ekitty "nvim $HOME/.dotfiles/conf/kitty"
abbr -ag envim "nvim $HOME/.dotfiles/conf/nvim/lua"

# }}}

# Files {{{

abbr -ag cleanupds 'find . -name ".DS_Store" -ls -delete'

abbr -ag mv 'mv -v'
abbr -ag rm 'rm -ivrf'
abbr -ag cp 'cp -vR'

abbr -ag mkdir 'mkdir -p'
abbr -ag md 'mkdir -p'

# }}}
