if command -q exa
  function ls -w exa
    exa -la --no-user --no-permissions --no-filesize --no-time --icons --group-directories-first --color=auto $argv
  end
end
