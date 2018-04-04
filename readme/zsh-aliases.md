### Aliases

- **`alias sudo="sudo "`**

  > A trailing space in VALUE causes the next word to be checked for alias substitution when the alias is expanded.
  — [man pages](http://www.linuxcommand.org/lc3_man_pages/aliash.html)

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
  alias edotfiles="$EDITOR $DOTFILES_DIR"
  alias ezplug="$EDITOR $DOTFILES_DIR/zsh/plugins.zsh"
  alias ealias="$EDITOR $DOTFILES_DIR/zsh/aliases.zsh"
  alias espalias="$EDITOR $DOTFILES_DIR/specific/zsh/aliases.zsh"
  alias espexports="$EDITOR $DOTFILES_DIR/specific/zsh/exports.zsh"
  ```

- **Git**

  ```
  alias gst="git status -s"
  alias gd="git diff --color-words"
  alias ga="git add -A"
  alias gcmsg="git commit -m"
  alias gacmsg="ga; gcmsg"
  alias gcoa="git checkout ."
  alias gcm="git checkout master"
  alias ggpush='git push origin $(git_current_branch)'
  alias ggpull='git pull origin $(git_current_branch)'
  alias gpfm="git pull origin master"
  alias gl='git log --graph --pretty='\''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --abbrev-commit --max-count=15'
  alias gsta="git stash save"
  alias gstp="git stash pop"
  alias gsts="git stash show --text"
  alias gstl="git stash list"
  alias gstc="git stash clear"
  alias gresoft="git reset --soft HEAD\^"
  alias grehard="git reset --hard HEAD\^"
  ```

  Common git commands

