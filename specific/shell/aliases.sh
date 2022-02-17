alias to_bl="cd ~/Work"

alias bl_essos="to_bl; cd essos; nvm use 14; yarn; yarn dev"
alias bl_hahen="to_bl; cd hahen; yarn; yarn dev"
alias bl_mock_user_context="to_bl; cd mock-user-context; yarn; yarn start"
alias bl_narsis="to_bl; cd narsis; yarn; yarn dev"
alias bl_pokedex="to_bl; cd pokedex; yarn; yarn start"
alias bl_sievexfe="to_bl; cd sievex-frontend; yarn; yarn dev"
alias bl_westeros="to_bl; cd westeros; nvm use 14; yarn; yarn dev"
alias bl_majapahit="to_bl; cd majapahit; nvm use 14; yarn; yarn dev"

alias start_postgres="pg_ctl -D /usr/local/var/postgres start"
alias stop_postgres="pg_ctl -D /usr/local/var/postgres stop"

alias kubepreprod="kubectl config use-context gke_kubernetes-preprod-0d59_asia-southeast1_k8s-preproduction-2"
alias kubeprod="kubectl config use-context gke_kubernetes-prod-94cb_asia-southeast1_k8s-production-2"

# vim:set foldmethod=marker foldlevel=0:
