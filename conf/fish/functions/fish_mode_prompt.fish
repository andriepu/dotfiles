function fish_mode_prompt
  switch $fish_bind_mode
    case default
      set_color --bold bedb4d
    case insert
      set_color --bold afafaf
    case replace_one
      set_color --bold yellow
    case visual
      set_color --bold brmagenta
    case '*'
      set_color --bold red
  end
  echo -n '  '
  set_color normal
end
