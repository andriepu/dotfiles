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
. ~/kerl/20.3/activate
#
# }}}

# Elasticsearch {{{
#
export PATH="/usr/local/opt/elasticsearch@2.4/bin:$PATH"
#
# }}}

# MySQL {{{
#
export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/mysql@5.6/lib"
export CPPFLAGS="-I/usr/local/opt/mysql@5.6/include"
#
# }}}

# Kiex {{{
#
[[ -s "$HOME/.kiex/scripts/kiex" ]] && source "$HOME/.kiex/scripts/kiex"
#
# }}}

# Node Modules {{{
#
export PATH=./node_modules/.bin:$PATH
#
# }}}

# vim:set syn=sh foldmethod=marker foldlevel=0:
