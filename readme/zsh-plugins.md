## Zsh Plugins
Here is the plugins that I used to optimize zsh. What I wrote down here are the major things about what they do and why I include them. If you want to know more about them, just visit their page.

- **`zplug 'zplug/zplug', hook-build:'zplug --self-manage'`** [»](https://github.com/zplug/zplug)

  Enabling zplug to manage itself. With this, we can update zplug via `zplug update`.

- **`zplug "tmuxinator/tmuxinator", from:github, use:"completion/tmuxinator.zsh"`** [»](https://github.com/tmuxinator/tmuxinator)
  
  It loads `tmuxinator.zsh` from `https://github.com/tmuxinator/tmuxinator`. With this, we can get **autocomplete** for standard tmuxinator syntax like **open**, **edit**, **start**, **copy**, **debug**, and **delete**.

- **`zplug "zdharma/fast-syntax-highlighting"`** [»](https://github.com/zdharma/fast-syntax-highlighting)
  
  Before | After
  --- | ---
  <img src="https://raw.githubusercontent.com/andriepu/screenshots/master/dotfiles/zsh-plugins-fast-syntax-highlighting-off.png" width="500" /> | <img src="https://raw.githubusercontent.com/andriepu/screenshots/master/dotfiles/zsh-plugins-fast-syntax-highlighting-on.png" width="500" />

- **`zplug "zsh-users/zsh-autosuggestions"`** [»](https://github.com/zsh-users/zsh-autosuggestions)
  
  _"It suggests commands as you type, based on command history"_
   
  &nbsp; |
  ---- |
  <img src="https://raw.githubusercontent.com/andriepu/screenshots/master/dotfiles/zsh-plugins-zsh-autosuggestions.gif" width="400" /> |
  
  ```
  # pressing `ctrl+p` will accept the given suggestion

  bindkey '^P' autosuggest-accept
  ```

- **`zplug "djui/alias-tips"`** [»](https://github.com/djui/alias-tips)

  _"help remembering those shell aliases and Git aliases you once defined."_
  
  &nbsp; |
  ---- |
  <img src="https://github.com/andriepu/screenshots/blob/master/dotfiles/zsh-plugins-alias-tips.png?raw=true" width="500" /> |


- **`zplug "zsh-users/zsh-history-substring-search"`** [»](https://github.com/zsh-users/zsh-history-substring-search)
  
  Before | After
  --- | ---
  <img src="https://raw.githubusercontent.com/andriepu/screenshots/master/dotfiles/zsh-plugins-zsh-history-substring-search-off.gif?v=1" width="500" /> | <img src="https://raw.githubusercontent.com/andriepu/screenshots/master/dotfiles/zsh-plugins-zsh-history-substring-search-on.gif?v=2" width="500" />
  
  ```
  # binding `UP` and `DOWN` keys, or `j` and `k` when in vim mode.

  bindkey "^[[A" history-substring-search-up   # ^[[A is keycode for `UP`
  bindkey "^[[B" history-substring-search-down # ^[[B is keycode for `DOWN`
  
  bindkey -M vicmd 'k' history-substring-search-up
  bindkey -M vicmd 'j' history-substring-search-down  
  ```
  
  ```
  # styling purpose

  HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND='fg=green,bold'
  HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_NOT_FOUND='fg=green'
  ```
  
  ```
  # prevent cycling into same syntax

  HISTORY_SUBSTRING_SEARCH_ENSURE_UNIQUE=true
  ```

- **`zplug "Tarrasch/zsh-bd"`** [»](https://github.com/Tarrasch/zsh-bd)

  _"Quickly go back to a specific parent directory instead of typing `cd ../../..` redundantly"_
  
  &nbsp; |
  --- |
  <img src="https://raw.githubusercontent.com/andriepu/screenshots/master/dotfiles/zsh-plugins-zsh-bd.gif" width="500" /> |

- **`zplug "ael-code/zsh-colored-man-pages"`** [»](https://github.com/ael-code/zsh-colored-man-pages)
  
  Before | After
  --- | ---
  <img src="https://raw.githubusercontent.com/andriepu/screenshots/master/dotfiles/zsh-plugins-zsh-colored-man-pages-off.png" width="500" /> | <img src="https://raw.githubusercontent.com/andriepu/screenshots/master/dotfiles/zsh-plugins-zsh-colored-man-pages-on.png" width="500" />
  
- **`zplug "lib/completion", from:oh-my-zsh`** [»](https://github.com/robbyrussell/oh-my-zsh/blob/master/lib/completion.zsh)
   
  It loads `completion.zsh` library from `oh-my-zsh`, enabling navigation inside suggestions.
  
  Before | After
  --- | ---
  <img src="https://raw.githubusercontent.com/andriepu/screenshots/master/dotfiles/zsh-plugins-completion-off.gif" width="500" /> | <img src="https://raw.githubusercontent.com/andriepu/screenshots/master/dotfiles/zsh-plugins-completion-on.gif" width="500" />
  
  ```
  # Use vim-like navigation key to cycling through suggestions
 
  bindkey -M menuselect 'h' vi-backward-char
  bindkey -M menuselect 'k' vi-up-line-or-history
  bindkey -M menuselect 'l' vi-forward-char
  bindkey -M menuselect 'j' vi-down-line-or-history
  ```

- **`zplug "$DOTFILES_DIR/themes/zsh", use:"dayspring.zsh-theme", from:local, as:theme`**  [»]( https://github.com/andriepu/dotfiles/blob/master/themes/zsh/dayspring.zsh-theme)
  
  It loads theme from local directory
  
  &nbsp; |
  --- |
  <img src="https://raw.githubusercontent.com/andriepu/screenshots/master/dotfiles/zsh-plugins-theme-dayspring.png" width="500" /> |


