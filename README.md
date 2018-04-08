<p align="center">
  <img src="https://raw.githubusercontent.com/andriepu/screenshots/master/dotfiles/terminal.png" width="600">
</p>

## What is this?
Old man said,
> _Every developer working with terminal must have their own dotfiles._

And as a good boy, I followed what the old man said to start my own dotfiles repository.
I'll try to make it well documented, so if you want to follow what the old man said by forking this repository, it should be easier.

## Take a note
- It's highly recommended for you to fork this repository instead of just cloning it. Some of the configurations is a **machine-specific**. You still have to change some values to match your local environment.
- I built this repository on and for macOS, but I'll try to support Linux, especially Ubuntu as well.
- Read the documentations and do with your own risk!

## What is in it?
1. Backup of your old configurations (if it exists)
2. [Terminal theme](https://github.com/andriepu/dotfiles/blob/master/readme/terminal-theme.md)
3. [ZSH configurations](https://github.com/andriepu/dotfiles/blob/master/readme/zsh.md)
4. [Tmux configurations](https://github.com/andriepu/dotfiles/blob/master/readme/tmux.md)
5. [Vim configurations](https://github.com/andriepu/dotfiles/blob/master/readme/vim.md)


## Setup

1. Sign in to your [github](https://github.com/login) account
2. [Fork it](https://github.com/andriepu/dotfiles/fork).
3. Go to home directory. It should be cloned into home directory.

   `
   cd $HOME
   `

4. Clone your forked dotfiles

   `
   git clone https://github.com/{YOUR_GITHUB_USERNAME}/dotfiles.git
   `

5. go to dotfiles folder

   `
   cd dotfiles
   `

6. Run script and follow the instructions.

   `
   bash ./install.sh
   `

7. Adjust some settings to match your local environment by [reading it](https://github.com/andriepu/dotfiles/blob/master/README.md#what-is-in-it)
