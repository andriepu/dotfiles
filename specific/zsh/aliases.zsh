alias bi="bundle install"
alias rdm="rake db:migrate; gco db/schema.rb; gco db/secondbase/schema.rb"
alias fs="foreman start"
alias rvm_use="rvm use ruby-2.3.0@bukalapak"
alias md="make dep"
alias mc="make compile"
alias mb="make build"
alias mdg="mix deps.get"
alias mdc="mix deps.compile"
alias mem="mix ecto.migrate"

alias to-bl="cd ~/Bukalapak"
alias to-go="cd ~/go/src/github.com/bukalapak"

alias bl_docker="to-bl; cd bldock; docker-compose start"
alias bl_mothership="to-bl; cd mothership; bi; rdm; yarn; foreman start"
alias bl_rails_c="to-bl; cd mothership; rvm_use; bundle exec rails c"
alias bl_aleppo="to-go; cd aleppo; mb; ./aleppo"
alias bl_seedorf="to-go; cd seedorf; mb; ./seedorf"
alias bl_palaver="to-bl; cd palaver; source .env; mem; iex --name master@127.0.0.1 -S mix"
alias bl_palaver_hub="to-bl; cd palaver-hub; iex --name hub@127.0.0.1 -S mix"
alias bl_palaver_keywords="to-bl; cd palaver-keywords; source .env; iex --name keywords@127.0.0.1 -S mix"
alias bl_hahen="to-go; cd hahen; ./deploy/_output/web-service/web-service"
alias bl_grandfleet="to-bl; cd grandfleet; mc; ./deploy/_output/web-service/web-service"

alias runpostgres="pg_ctl -D /usr/local/var/postgres start"
alias stoppostgres="pg_ctl -D /usr/local/var/postgres stop"

alias runbukalapak="mux bukalapak"
alias runchat="mux chat"
alias runbumblebee="mux bumblebee"

# vim:set foldmethod=marker foldlevel=0:
