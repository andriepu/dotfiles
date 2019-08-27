# RVM {{{
#
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
#
# }}}

# Go {{{
#
GOROOT=/usr/local/bin
GOPATH=$HOME/go

export PATH=$GOPATH/bin:$PATH
#
# }}}

# Erlang/Elixir {{{
#
# . ~/kerl/20.3/activate
#
# }}}

# Elasticsearch {{{
#
export PATH="/usr/local/opt/elasticsearch@2.4/bin:$PATH"
#
# }}}

# MySQL {{{
#
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/mysql@5.7/lib"
export CPPFLAGS="-I/usr/local/opt/mysql@5.7/include"
#
# }}}

# Kiex {{{
#
# [[ -s "$HOME/.kiex/scripts/kiex" ]] && source "$HOME/.kiex/scripts/kiex"
#
# }}}

# Asdf {{{
#
. $(brew --prefix asdf)/asdf.sh
. $(brew --prefix asdf)/etc/bash_completion.d/asdf.bash
#
# }}}

# Visual Studio Code {{{
#
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
#
# }}}

# Node Modules {{{
#
export PATH=./node_modules/.bin:$PATH
#
# }}}

export FLOO_ROOT="$(npm root -g)/@andriepu/floo"

# vim:set syn=sh foldmethod=marker foldlevel=0:
