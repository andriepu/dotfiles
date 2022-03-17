#!/usr/bin/env fish

set -l apps 'fish kitty neovim blvpn'
set -l apps (string split ' ' $apps)

set -g unfinished 0
set -g result

set -g indent 0

# Utilities: Set indent {{{

function add_indent
  set indent (math $indent + 2)
end

function reduce_indent
  set indent (math $indent - 2)
end

# }}}

# Utilities: Check App {{{

function check_app
  argparse 'fn=' 'name=' 'deps=?' 'notes=?' -- $argv

  set -l suffix ''

  if test $indent -gt 0
    for i in (seq $indent)
      set -a result ''
    end
  else
    set -a result '\n'
  end

  if eval $_flag_fn
    set -a result (set_color green)' '
  else
    set unfinished 1

    if test $_flag_notes
      set suffix ' - '(set_color blue)$_flag_notes
    end

    set -a result (set_color brred)' '
  end

  set -a result $_flag_name(set_color normal)$suffix'\n'

  test $_flag_deps; and add_indent

  for dep in (string split ' ' $_flag_deps)
    check_$dep
  end

  test $_flag_deps; and reduce_indent
end

# }}}

# ---

# Fish {{{

function check_fish
  check_app \
    --name='Fish shell' \
    --fn='command -q fish' \
    --deps='default_fishshell fisher fish_setup' \
    --notes='https://fishshell.com/'
end

function check_default_fishshell
  check_app \
    --name='Set as default' \
    --fn='test (string match -r 'fish' $SHELL)' \
    --notes='https://fishshell.com/docs/current/tutorial.html#switching-to-fish'
end

function check_fisher
  check_app \
    --name='Fisher' \
    --fn='type -q fisher' \
    --notes='https://github.com/jorgebucaran/fisher'
end

function check_fish_setup
  check_app \
    --name='Symlink config' \
    --fn='test -e $HOME/.config/fish; and test (readlink -n $HOME/.config/fish) = $HOME/.dotfiles/conf/fish' \
    --notes='ln -svf $HOME/.dotfiles/conf/fish $HOME/.config/fish'
end

# }}}

# Kitty {{{

function check_kitty
  check_app \
    --name='Kitty terminal' \
    --fn='command -q kitty' \
    --deps='nerd_fonts exa bat delta kitty_setup' \
    --notes='https://sw.kovidgoyal.net/kitty/'
end

function check_kitty_setup
  check_app \
    --name='Symlink config' \
    --fn='test -e $HOME/.config/kitty; and test (readlink -n $HOME/.config/kitty) = $HOME/.dotfiles/conf/kitty' \
    --notes='ln -svf $HOME/.dotfiles/conf/kitty $HOME/.config/kitty'
end

# }}}

# Neovim {{{

function check_neovim
  check_app \
    --name='Neovim' \
    --fn='command -q nvim' \
    --deps='nerd_fonts fd ripgrep lazygit neovim_setup' \
    --notes='https://github.com/neovim/neovim/wiki/Installing-Neovim#homebrew-on-macos-or-linux'
end

function check_neovim_setup
  check_app \
    --name='Symlink config' \
    --fn='test -e $HOME/.config/nvim; and test (readlink -n $HOME/.config/nvim) = $HOME/.dotfiles/conf/nvim' \
    --notes='ln -svf $HOME/.dotfiles/conf/nvim $HOME/.config/nvim'
end

# }}}

# Nerd Font {{{

function check_nerd_fonts
  check_app \
    --name='Nerd Fonts' \
    --fn='test (count (ls $HOME/Library/Fonts/ | grep -ie nerd)) -ne 0' \
    --notes='https://github.com/ryanoasis/nerd-fonts#option-4-homebrew-fonts'
end

# }}}

# fd {{{

function check_fd
  check_app \
    --name='fd' \
    --fn='command -q fd' \
    --deps='fd_setup' \
    --notes='https://github.com/sharkdp/fd'
end

function check_fd_setup
  check_app \
    --name='fd config' \
    --fn='test -e $HOME/.config/fd; and test (readlink -n $HOME/.config/fd) = $HOME/.dotfiles/conf/fd' \
    --notes='ln -svf $HOME/.dotfiles/conf/fd $HOME/.config/fd'
end

# }}}

# ripgrep {{{

function check_ripgrep
  check_app \
    --name='ripgrep' \
    --fn='command -q rg' \
    --notes='https://github.com/BurntSushi/ripgrep'
end

# }}}

# bat {{{

function check_bat
  check_app \
    --name='bat' \
    --fn='command -q bat' \
    --deps='batgrep' \
    --notes='https://github.com/sharkdp/bat#installation'
end

function check_batgrep
  check_app \
    --name='batgrep' \
    --fn='command -q batgrep' \
    --notes='https://github.com/eth-p/bat-extras#homebrew'
end

# }}}

# exa {{{

function check_exa
  check_app \
    --name='exa' \
    --fn='command -q exa' \
    --notes='https://github.com/ogham/exa#installation'
end

# }}}

# delta {{{

function check_delta
  check_app \
    --name='delta' \
    --fn='command -q delta' \
    --notes='https://github.com/dandavison/delta#get-started'
end

# }}}

# lazygit {{{

function check_lazygit
  check_app \
    --name='lazygit' \
    --fn='command -q lazygit' \
    --notes='https://github.com/jesseduffield/lazygit#homebrew'
end

# }}}

# stylua {{{

function check_stylua
  check_app \
    --name='stylua' \
    --fn='command -q stylua' \
    --notes='https://github.com/JohnnyMorganz/StyLua'
end

# }}}

# openvpn {{{

function check_blvpn
  check_app \
    --name='blvpn' \
    --fn='command -q ds-blvpn' \
    --deps='openvpn' \
    --notes='https://gitlab.cloud.bukalapak.io/bukalapak/devscripts/-/tree/master/src/scripts/blvpn'
end

function check_openvpn
  check_app \
    --name='openvpn' \
    --fn='command -q openvpn' \
    --notes='https://openvpn.net/'
end

# }}}

# --- Output ---{{{

for app in $apps
  check_$app
end

echo -e $result
echo

# }}}

set_color normal

# vim:set foldmethod=marker foldlevel=0:
