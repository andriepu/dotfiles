# Kill process with given PORT
# Usage: terminate_port 8888 -> will kill all process associated with 8888
terminate_port() {
  lsof -ti:$1 | xargs kill -9
}

# Set pane title for Tmux
# Usage: set_pane_title "Pane Name"
set_pane_title() {
  printf "\033]2;$1\033\\"
}

# vim:set foldmethod=marker foldlevel=0:
