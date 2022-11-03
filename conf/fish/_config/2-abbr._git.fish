abbr -ag gc 'git checkout'
abbr -ag gcm 'git checkout (git branch | cut -c 3- | grep -E \'^master$|^main$\')'
abbr -ag gcb 'git checkout -b'
abbr -ag gst 'git status -s -u'
abbr -ag gd 'git diff'
abbr -ag ga 'git add -A'
abbr -ag gb 'git branch'
abbr -ag gbd 'git branch -D'
abbr -ag gcmsg 'git commit -m'
abbr -ag gacmsg 'git add -A; git commit -m'
abbr -ag gre 'git reset'
abbr -ag gresoft 'git reset --soft HEAD\^'
abbr -ag grehard 'git reset --hard HEAD\^'
abbr -ag glog 'clear; git log --graph --pretty='\''%Cred%H%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --abbrev-commit --max-count=15; echo'
abbr -ag gl "git pull; git pull origin (git branch | sed -n -e 's/^\* \(.*\)/\1/p')"
abbr -ag gp "git push origin (git branch | sed -n -e 's/^\* \(.*\)/\1/p')"
abbr -ag gpf "git push origin (git branch | sed -n -e 's/^\* \(.*\)/\1/p') -f"
