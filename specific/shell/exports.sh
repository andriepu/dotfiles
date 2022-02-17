# RVM {{{
#
export PATH="$PATH:$HOME/.rvm/bin"
#
# }}}

# GPG {{{
#
export GPG_TTY=${tty}
#
# }}}

# MySQL {{{
#
export PATH="/usr/local/opt/mysql-client/bin:$PATH"
#
# }}}

# GCloud {{{
#
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/andriepu/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/andriepu/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/andriepu/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/andriepu/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
#
# }}
# vim:set syn=sh foldmethod=marker foldlevel=0:
