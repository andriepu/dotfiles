require 'telescope'.setup {
  pickers = {
    find_files = {
      find_command = { 'fd', '--type', 'f', '--strip-cwd-prefix' }
    },
  }
}
