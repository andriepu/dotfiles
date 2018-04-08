source $DOTFILES_DIR/setup/symlink.sh
file=".tmux.conf"

setup_list=(
  "Creating symlink ${Yellow}~/$file ${Green}from ${Yellow}$DOTFILES_DIR/$file"
  "Backup your old ${Yellow}~/$file ${Green}into ${Yellow}$DOTFILES_DIR/backups ${Green}if it's exist"
)

echo "» Setting up tmux...."
for step in "${setup_list[@]}"
do
  echo -e "${Green} • $step${Color_Off}"
done
echo

waiting_for_response
echo

# Creating symlink and back up your existing ~/.tmux.conf
creating_symlink "$file"
