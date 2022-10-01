# tabtab source for packages
# uninstall by removing these lines
[ -f ~/.config/tabtab/fish/__tabtab.fish ]; and . ~/.config/tabtab/fish/__tabtab.fish; or true

set -gx PNPM_HOME "/Users/andriepu/Library/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
