#!/usr/bin/env fish

kitty @ set-window-title Initial-Service

kitty @ launch --no-response --title Tilt --cwd "$HOME/Workspace/mitra_bangunan_fe/" fish -C "nvm use 16; yarn dev"
kitty @ launch --no-response --title Telepresence --cwd "$HOME/Workspace/mitra_bangunan_fe" fish -C "nvm use 16; telepresence quit -ur; telepresence connect"

kitty @ launch --no-response --title VPN-Buka2.0 --cwd "$HOME/Workspace/.vpn" fish -C "ds-blvpn buka2.0"

kitty @ launch --no-response --title Neovim --type tab --cwd "$HOME/Workspace/mitra_bangunan_fe" fish

kitty @ close-window --match title:Initial-Service
