if command -q eza
  function ls -w eza
    eza -la --no-user --no-permissions --no-filesize --no-time --icons --group-directories-first --color=auto $argv
  end
end
