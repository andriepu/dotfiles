source "$HOME/.config/fish/_config/1-env.fish"
source "$HOME/.config/fish/_config/2-abbr.fish"
source "$HOME/.config/fish/_config/3-overrides.fish"
source "$HOME/.config/fish/_config/4-functions.fish"

set -U fish_greeting

# tabtab source for packages
# uninstall by removing these lines
[ -f ~/.config/tabtab/fish/__tabtab.fish ]; and . ~/.config/tabtab/fish/__tabtab.fish; or true

set -gx GOPATH $HOME/go; set -gx GOROOT $HOME/.go; set -gx PATH $GOPATH/bin $PATH; # g-install: do NOT edit, see https://github.com/stefanmaric/g

# Setting PATH for Python 3.10
# The original version is saved in /Users/andriepu/.config/fish/config.fish.pysave
set -x PATH "/Library/Frameworks/Python.framework/Versions/3.10/bin" "$PATH"
kubectl completion fish | source
