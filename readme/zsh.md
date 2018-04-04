## ZSH Configurations
I know there are so many [awesome zsh framework](https://github.com/unixorn/awesome-zsh-plugins#frameworks) out there that packed with awesome configurations. For me, that's the problem. They're just too big for me to follow and understand every parts of them.
When I started this dotfiles, I have a commitment to know every details that I wrote, or at least the big part of it when it comes from the external plugins.

I'm using [zplug](https://github.com/zplug/zplug) to mantain the plugins. I found it clearer and more flexible to use compared to the other plugin managers I tried. Just read the [zplug repository](https://github.com/zplug/zplug) if you want to understand more about it.

### `.zshrc`
- Basically, `.zshrc` is just an index file that sourcing from the other files. Separated zsh configurations are in `zsh/` folder. The things that you should keep in mind about this file is:
  - **```DOTFILES_DIR=$HOME/dotfiles```**

    You can change the value of this variable depending on where you clone your forked dotfiles. In the [Setup tutorial](https://github.com/andriepu/dotfiles/blob/master/README.md#setup), I encourage you to clone it in `$HOME` directory, so leave it as it is will be OK.

  - **The order of sourcing files**

    Some files need to be sourced below the other files. For that case, There will be `require: ...` comment beside them. In example:

    **```source $DOTFILES_DIR/zsh/aliases.zsh # require: exports.zsh```**

  It means that `aliases.zsh` must be sourced below the `exports.zsh`
 
  - **`specific/` folder and files**

    I've mentioned that dotfiles is `machine-specific`. So to make it easier, I put the machine-specific into the `specific/` folder. It means that everything under that folder are must be **emptied**, **fully deleted**, or **changed** based on your local machine.
  
    If you were a `bash` user, all of your old settings that should be copied are either on `~/.bashrc` or `~/.bash_profile`
 
---
### `zsh/`
 
#### `colors.zsh`

- Usage: **` echo -e "${Red}${Bold}Red_Bold ${Red}Red ${BRed}Red ${Color_Off}No_Color" `**

  <img src="https://raw.githubusercontent.com/andriepu/screenshots/master/dotfiles/zsh-colors-echo.png" width="600" />

- Please remember that you have to reset the color if you finished using it. If not, the color will be used to the next `echo` in the same session.
  
  <img src="https://raw.githubusercontent.com/andriepu/screenshots/master/dotfiles/zsh-colors-echo-noreset.png" width="600" />
  
  <img src="https://raw.githubusercontent.com/andriepu/screenshots/master/dotfiles/zsh-colors-echo-withreset.png" width="600" />

- `-e` in the examples above mean to execute `echo` with parsing the escaped characters. Those color variables are using escaped characters.

#### `exports.zsh`

- **` export EDITOR="vim" `**

  `$EDITOR` is required by **tmuxinator**. If you don't want to use `vim` as your default editor, feel free to change the value.

- **` export KEYTIMEOUT=10 `**

  - `$KEYTIMEOUT` is used to determine how long to wait (in hundredths of a second) for **additional characters in sequence**. The Default value is 40 (0.4 seconds). We reduce the delay to 0.1 seconds to make it feels less laggy.
    The example of key sequences is when you press `j` and then `k` to change into vim `NORMAL` mode.
  - Please take a note that `jk` sequence is our custom key binding defined in [bindings.zsh](https://github.com/andriepu/dotfiles/blob/master/zsh/bindings.zsh)

- **` export TMUXINATOR_CONFIG=$DOTFILES_DIR/specific/tmuxinator_projects `**

  - It changed the default 
  projects folder (usually at `~/.config/tmuxinator/` on macOS) into `$DOTFILES_DIR/specific/tmuxinator_projects/`. So, when you create a new tmuxinator project, it will be created inside dotfiles directory. This way, it will be easier for you to backup your tmuxinator projects.

#### `functions.zsh`

- **`terminate_port`**
  
  Usage: **`terminate_port "8888"`**. It will kill processes bound on port `8888`

- **`set_pane_title`**

  Usage: **`set_pane_title "My Terminal Title"`**. It will give **tmux** pane a title.
  
  <img src="https://raw.githubusercontent.com/andriepu/screenshots/master/dotfiles/zsh-functions-panetitle.png" width="500" />


#### `bindings.zsh`

- **`bindkey -v`**
  
  It uses **vim** key binding in zsh terminal. The default value is `bindkey -e` (emacs key biding).

- **`bindkey -M viins 'jk' vi-cmd-mode`**

  Default key to switch between `modes` is `<esc>`. But it's always inconvenient to press `<esc>` while typing, because of its placement. So, we bind it to `jk` sequence to make it more reachable.
 
  <img src="https://raw.githubusercontent.com/andriepu/screenshots/master/dotfiles/zsh-bindings-vim.gif" width="500" />

  _*keystrokes shown in the gif is not the part of terminal_


#### `aliases.zsh`

- It has its own [documentation page](https://github.com/andriepu/dotfiles/blob/master/readme/zsh-aliases.md).


#### `plugins.zsh`

- It has its own [documentation page](https://github.com/andriepu/dotfiles/blob/master/readme/zsh-plugins.md).

#### `nyan.zsh`

- print legendary **nyan cat** to greet you every time you open **terminal**.
