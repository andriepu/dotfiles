source $DOTFILES_DIR/setup/symlink.sh
file=".zshrc"

setup_list=(
  "Set ${Yellow}$(which zsh) ${Green}as your default ${Yellow}SHELL"
  "Creating symlink ${Yellow}~/$file ${Green}from ${Yellow}$DOTFILES_DIR/$file"
  "Backup your old ${Yellow}~/$file ${Green}into ${Yellow}$DOTFILES_DIR/backups ${Green}if it's exist"
)

echo "» Setting up zsh...."
for step in "${setup_list[@]}"
do
  echo -e "${Green} • $step${Color_Off}"
done
echo

waiting_for_response
echo

# Set zsh as your default SHELL
if [[ ! $SHELL =~ zsh* ]];
then
  if [[ $OSTYPE =~ linux* ]];
  then
    echo -e "${Yellow}Setting zsh as yout default SHELL${Color_Off}"
  fi

  if ! grep -Fxq "$(which zsh)" /etc/shells;
  then
    sudo sh -c "echo $(which zsh) >> /etc/shells"
  fi
  chsh -s $(which zsh)
  echo
fi

# Creating symlink and back up your existing ~/.zshrc
creating_symlink "$file"
