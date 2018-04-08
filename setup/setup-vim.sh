source $DOTFILES_DIR/setup/symlink.sh
file=".vimrc"

setup_list=(
  "Creating symlink ${Yellow}~/$file ${Green}from ${Yellow}$DOTFILES_DIR/$file"
  "Backup your old ${Yellow}~/$file ${Green}into ${Yellow}$DOTFILES_DIR/backups ${Green}if it's exist"
  "Load vim plugins"
)

echo "» Setting up vim...."
for step in "${setup_list[@]}"
do
  echo -e "${Green} • $step${Color_Off}"
done
echo

waiting_for_response
echo

# Creating symlink and back up your existing ~/.zshrc
creating_symlink "$file"

# Load plugins
vim +'PlugInstall --sync' +qa
