#!/usr/bin/env zsh

zsh_theme_pwd=" %{$fg[blue]%}(%~)%{$reset_color%}"

zsh_theme_git_status() {
  local dirty
  if git rev-parse --is-inside-work-tree > /dev/null 2>&1; then
    dirty=$(parse_git_dirty)
    if [[ -n $dirty ]]; then
      echo " %{$fg[yellow]%}$(git_prompt_info)%{$reset_color%}"
    else
      echo " %{$fg[green]%}$(git_prompt_info)%{$reset_color%}"
    fi
  fi
}

zsh_theme_user="%{$terminfo[bold]$fg[green]%}%n@%m%{$reset_color%}"

if [[ $USER = 'root' ]]; then
  zsh_theme_user_symbol="%{$fg[red]%}#"
else
  zsh_theme_user_symbol="%{$fg[yellow]%}>"
fi

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}[%{$fg[red]%}%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}±%{$fg[yellow]%}"

PROMPT='${zsh_theme_user}${zsh_theme_pwd}$(zsh_theme_git_status)
${zsh_theme_user_symbol} '

zsh_theme_insert_mode="%{$fg[blue]%}[INS]%{$reset_color%}"
zsh_theme_normal_mode="%{$fg[green]%}[NOR]%{$reset_color%}"

function set-prompt () {
  case ${KEYMAP} in
    (vicmd)      zsh_theme_vi_mode="${zsh_theme_normal_mode}" ;;
    (main|viins) zsh_theme_vi_mode="${zsh_theme_insert_mode}" ;;
    (*)          zsh_theme_vi_mode="${zsh_theme_insert_mode}" ;;
  esac
  RPROMPT="${zsh_theme_vi_mode}"
}

RPROMPT="${zsh_theme_normal_mode}"

function zle-line-init zle-keymap-select {
  set-prompt
  zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select
