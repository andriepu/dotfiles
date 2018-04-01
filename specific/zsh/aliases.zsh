# Kill process with given PORT
# Usage: terminate_port 8888 -> will kill all process associated with 8888
terminate_port() {
  lsof -ti:$1 | xargs kill -9
}

SQUAD_NAME="CHAT"

# Create new branch with Squad prefix
# Usage: gcbt 123 -> will create new branch named `SQUAD-123`. Assumed SQUAD_NAME="SQUAD"
gcbt() {
  git checkout -b $SQUAD_NAME-$1
}

# Checkout to Squad prefixed branch
# Usage: gcot 123 -> will checkout to branch named `SQUAD-123`. Assumed SQUAD_NAME="SQUAD"
gcot() {
  git checkout $SQUAD_NAME-$1
}

# Aliases {{{
#
# Services
alias bi="bundle install"
alias rdm="rake db:migrate; gco db/schema.rb; gco db/secondbase/schema.rb"
alias fs="foreman start"
alias bl_fs="bi;rdm;yarn;fs"

alias bl_rvm_use="rvm use 2.3.0@bukalapak"
alias splitter_rvm_use="rvm use 2.4.0@splitter-dashboard"

alias to_bl="cd ~/Bukalapak"
alias to_go_src="cd ~/Go/src/github.com/bukalapak"

alias bl_to_mothership="to_bl; cd mothership; bl_rvm_use; gst"

alias bl_foreman="to_bl; cd mothership; bl_rvm_use; bl_fs"

alias bl_aleppo="to_go_src; cd aleppo; ./aleppo"

alias bl_marcopolo="to_bl; cd marcopolo; npm start"

alias bl_haproxy="to_bl; cd badumts; haproxy -f haproxy.cfg"

alias bl_badumts="to_bl; cd badumts; npm start"

alias bl_rails_c="to_bl; cd mothership; bl_rvm_use; rails c"

alias bl_palaver="to_bl; cd palaver; source .env; iex --name master@127.0.0.1 -S mix"

alias bl_palaver_bulk="to_bl; cd palaver-bulk; source .env; iex -S mix"

alias bl_palaver_search="to_bl; cd palaver-search; source .env; iex --name search@127.0.0.1 -S mix"

alias bl_protypo="to_go_src; cd protypo; ./protypo"

alias bl_splitter="to_go_src; cd splitter; REDIS_URL=127.0.0.1:6379 ./deploy/_output/splitter -p 6643"

alias bl_splitter_dashboard="to_go_src; cd splitter-dashboard; splitter_rvm_use; shotgun config.ru"

alias runmongo="launchctl load /usr/local/opt/mongodb/homebrew.mxcl.mongodb.plist"
alias runredis="launchctl load /usr/local/opt/redis/homebrew.mxcl.redis.plist"
alias runbeanstalkd="launchctl load /usr/local/opt/beanstalkd/homebrew.mxcl.beanstalkd.plist"
alias runelasticsearch="launchctl load /usr/local/opt/elasticsearch/homebrew.mxcl.elasticsearch.plist"
alias runpostgresql="launchctl load /usr/local/opt/postgresql/homebrew.mxcl.postgresql.plist"
alias runmysql="launchctl load /usr/local/opt/mysql/homebrew.mxcl.mysql.plist"
alias bl_services="runmongo; runredis; runbeanstalkd; runelasticsearch; runpostgresql; runmysql;"
#
# }}}

