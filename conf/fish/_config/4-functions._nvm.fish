function __check_nvm --on-variable PWD --description 'Autoload nvm based on .nvmrc'
  status --is-command-substitution; and return

 if test -e ./.nvmrc;  nvm use; end
end
