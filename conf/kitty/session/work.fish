#!/usr/bin/env fish

kitty @ set-window-title Initial-Service

kitty @ launch --no-response --title Mock-User-Context --cwd "$HOME/Workspace/mock-user-context/" fish
kitty @ launch --no-response --title Majapahit --cwd "$HOME/Workspace/majapahit" fish -C 'nvm use 14; yarn dev'
kitty @ launch --no-response --title Essos --cwd "$HOME/Workspace/essos" fish -C 'nvm use 14; yarn dev'
kitty @ launch --no-response --title Westeros --cwd "$HOME/Workspace/westeros/" fish -C 'nvm use 14; yarn dev'
kitty @ launch --no-response --title Hahen --cwd "$HOME/Workspace/hahen" fish -C "nvm use 14; yarn dev"
kitty @ launch --no-response --title Quest --cwd "$HOME/Workspace/quest/" fish -C "nvm use 14; yarn start"
kitty @ launch --no-response --title Sievex-Frontend --cwd "$HOME/Workspace/sievex-frontend/" fish -C "nvm use 14; yarn start"

kitty @ launch --no-response --title VPN-Preprod-Azure --type tab --cwd "$HOME/Workspace/.vpn" fish
kitty @ launch --no-response --title VPN-Prod-Gcp --cwd "$HOME/Workspace/.vpn" fish

kitty @ send-text --match title:VPN-Preprod-Azure 'vpnpreprodazure'
kitty @ send-text --match title:VPN-Prod-Gcp 'vpnprodgcp'

kitty @ launch --no-response --title Neovim --type tab --cwd "$HOME/Workspace/" fish -C "nvim"

kitty @ close-window --match title:Initial-Service
