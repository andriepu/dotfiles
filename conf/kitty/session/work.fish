#!/usr/bin/env fish

kitty @ set-window-title Initial-Service

kitty @ launch --no-response --title Mock-User-Context --cwd "$HOME/Workspace/mock-user-context/" fish
kitty @ launch --no-response --title Majapahit --cwd "$HOME/Workspace/majapahit" fish
kitty @ launch --no-response --title Essos --cwd "$HOME/Workspace/essos" fish
kitty @ launch --no-response --title Westeros --cwd "$HOME/Workspace/westeros/" fish
kitty @ launch --no-response --title Hahen --cwd "$HOME/Workspace/hahen" fish -C "nvm use 14; yarn dev"
kitty @ launch --no-response --title Quest --cwd "$HOME/Workspace/quest/" fish
kitty @ launch --no-response --title Sievex-Frontend --cwd "$HOME/Workspace/sievex-frontend/" fish

kitty @ launch --no-response --title VPN-Preprod-Azure --cwd "$HOME/Workspace/.vpn" fish
kitty @ launch --no-response --title VPN-Prod-Gcp --cwd "$HOME/Workspace/.vpn" fish

kitty @ send-text --match title:Mock-User-Context "yarn start "
kitty @ send-text --match title:Majapahit "nvm use 14; yarn dev"
kitty @ send-text --match title:Essos "nvm use 14; yarn dev"
kitty @ send-text --match title:Westeros "nvm use 14; yarn dev"
kitty @ send-text --match title:Quest "nvm use 14; yarn start"
kitty @ send-text --match title:Sievex-Frontend "nvm use 14; yarn start"

kitty @ send-text --match title:VPN-Preprod-Azure "ds-blvpn azure-preproduction"
kitty @ send-text --match title:VPN-Prod-Gcp "ds-blvpn gcp-production"

kitty @ launch --no-response --title Neovim --type tab --cwd "$HOME/Workspace/" fish

kitty @ close-window --match title:Initial-Service
