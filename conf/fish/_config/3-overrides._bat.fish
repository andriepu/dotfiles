if command -q bat
  function cat -w bat
    bat $argv
  end

  abbr -a -g batgrep 'batgrep --type-not \'svg\''
end
