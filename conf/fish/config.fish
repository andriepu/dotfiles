source "$HOME/.config/fish/_config/1-env.fish"
source "$HOME/.config/fish/_config/2-abbr.fish"
source "$HOME/.config/fish/_config/3-overrides.fish"
source "$HOME/.config/fish/_config/4-functions.fish"

set -U fish_greeting

# tabtab source for packages
# uninstall by removing these lines
[ -f ~/.config/tabtab/fish/__tabtab.fish ]; and . ~/.config/tabtab/fish/__tabtab.fish; or true
