## ZSH Configurations
I know there are so many [awesome zsh framework](https://github.com/unixorn/awesome-zsh-plugins#frameworks) out there that packed with awesome configurations. For me, that's the problem. They're just too big for me to follow and understand every parts of them.
When I started this dotfiles, I have a commitment to know every details that I wrote, or at least the big part of it when it comes from the external plugins.

I'm using [zplug](https://github.com/zplug/zplug) to mantain the plugins. I found it clearer and more flexible to use compared to the other plugin managers I tried. Just read the [zplug repository](https://github.com/zplug/zplug) if you want to understand more about it.

### `.zshrc`
Basically, `.zshrc` is just an index file that sourcing from the other files. Separated zsh configurations are in `zsh/` folder. The things that you should keep in mind about this file is:
- **```DOTFILES_DIR=$HOME/dotfiles```**

  You can change the value of this variable depending on where you clone your forked dotfiles. In the [Setup tutorial](https://github.com/andriepu/dotfiles/blob/master/README.md#setup), I encourage you to clone it in `$HOME` directory, so leave it as it is will be OK.

- **The order of sourcing files**
  
  Some files need to be sourced below the other files. For that case, There will be `require: ...` comment beside them. In example:

  ```source $DOTFILES_DIR/zsh/aliases.zsh # require: exports.zsh```
  
  It means that `aliases.zsh` must be sourced below the `exports.zsh`
 
- **`specific/` folder and files**

  I've mentioned that dotfiles is `machine-specific`. So to make it easier, I put the machine-specific into the `specific/` folder. It means that everything under that folder are must be **emptied**, **fully deleted**, or **changed** based on your local machine.
  
  If you were a `bash` user, all of your old settings that should be copied are either on `~/.bashrc` or `~/.bash_profile`
 
---
### `zsh/`
 
#### `init.zsh`
This file means to laod initial dependencies used for others.

- `compdef` is currently used by **tmuxinator** in `plugins.zsh`, so we need to check the existence of the `compdef` command when we starting `zsh`. If it didn't exist, we load `compinit` which are the module containing `compdef`.

  ```
  if [ command -v compdef >/dev/null 2>&1 ];
  then
    autoload -Uz compinit

    if [[ -n ~/.zcompdump(#qN.mh+24) ]]; then
      compinit;
    else
      compinit -C;
    fi;
  ```

#### `colors.zsh`
This file means to contain color variables that can be used by others.

- Usage: **` echo -e "${Red}${Bold}Red_Bold ${Red}Red ${BRed}Red ${Color_Off}No_Color" `**

  <img src="https://raw.githubusercontent.com/andriepu/screenshots/master/dotfiles/zsh-colors-echo.png" width="600" />

- Please remember that you have to reset the color if you finished using it. If not, the color will be used to the next `echo` in the same session.
  
  <img src="https://raw.githubusercontent.com/andriepu/screenshots/master/dotfiles/zsh-colors-echo-noreset.png" width="600" />
  
  <img src="https://raw.githubusercontent.com/andriepu/screenshots/master/dotfiles/zsh-colors-echo-withreset.png" width="600" />

- `-e` in the examples above mean to execute `echo` with parsing the escaped characters. Those color variables are using escaped characters.

#### `exports.zsh`
This file means to contain variables that exposed to `ENV`

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
This file means to contain functions used by others.

- **`terminate_port`**
  
  Usage: **`terminate_port "8888"`**. It will kill processes bound on port `8888`

- **`set_pane_title`**

  Usage: **`set_pane_title "My Terminal Title"`**. It will give **tmux** pane a title.
  
  <img src="https://raw.githubusercontent.com/andriepu/screenshots/master/dotfiles/zsh-functions-panetitle.png" width="500" />


#### `bindings.zsh`
This file means to contain custom bindings.

- **`bindkey -v`**
  
  It uses **vim** key binding in zsh terminal. The default value is `bindkey -e` (emacs key biding).

- **`bindkey -M viins 'jk' vi-cmd-mode`**

  Default key to switch between `modes` is `<esc>`. But it's always inconvenient to press `<esc>` while typing, because of its placement. So, we bind it to `jk` sequence to make it more reachable.
 
  <img src="https://raw.githubusercontent.com/andriepu/screenshots/master/dotfiles/zsh-bindings-vim.gif" width="500" />

  _*keystrokes shown in the gif is not the part of terminal_


#### `aliases.zsh`
This file means to contain aliases that help us to shorten syntax. It requires exports.zsh

- **`alias sudo="sudo "`**
  
  > A trailing space in VALUE causes the next word to be checked for alias substitution when the alias is expanded.
  — [[man pages]](http://www.linuxcommand.org/lc3_man_pages/aliash.html)
  
  It makes us to be able running `sudo somealias`.

- **`alias r!="source ~/.zshrc; echo 'zshrc reloaded'"`**

  Easy way to reload `.zshrc`.

- **`alias cleanupds="find . -type f -name '*.DS_Store' -ls -delete"`**
  
  Delete `.DS_Store` files recursively.

- **Shorter `cd`**

  ```
  alias ..="cd .."
  alias ...="cd ../.."
  alias ....="cd ../../.."
  alias .....="cd ../../../.."
  alias ~="cd ~"
  alias -- -="cd -"
  ```
  
  It just shorter syntax to use `cd`

- **Verbose processes**
  
  ```
  alias mv='mv -v'
  alias rm='rm -i -v'
  alias cp='cp -v'
  ```
  
  <img src="https://raw.githubusercontent.com/andriepu/screenshots/master/dotfiles/zsh-aliases-verbose.png" width="500" />
  
  It makes `mv`, `rm`, and `cp` to be verbosed by default. It alse set `interactive` mode to `rm`.

- **Better `mkdir`**
  
  ```
  alias mkdir="mkdir -p"
  alias md="mkdir"
  ```
  
  `mkdir` always create parent directories if it didn't exist

- **Colorful `ls`**

  ```
  alias ls='ls -GFh'
  alias ll='ls -GFhl'
  ```
  
  <img src="https://raw.githubusercontent.com/andriepu/screenshots/master/dotfiles/zsh-aliases-ls.png" width="500" />
  
  `ll` is just long format of `ls`

- **Easy edit**

  ```
  alias ehosts="sudo $EDITOR /etc/hosts"
  alias ezplug="$EDITOR $DOTFILES_DIR/zsh/plugins.zsh"
  alias ealias="$EDITOR $DOTFILES_DIR/zsh/aliases.zsh"
  alias espalias="$EDITOR $DOTFILES_DIR/specific/zsh/aliases.zsh"
  ```

#### `plugins.zsh`

`plugins.zsh` is special. It has its own [documentation page]().
