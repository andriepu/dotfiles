abbr -ag gc 'git checkout'
abbr -ag gcm 'git checkout master'
abbr -ag gst 'git status -s'
abbr -ag gd 'git diff'
abbr -ag ga 'git add -A'
abbr -ag gbd 'git branch -D'
abbr -ag gcmsg 'git commit -m'
abbr -ag gacmsg 'git add -A; git commit -m'
abbr -ag gre 'git reset'
abbr -ag gresoft 'git reset --soft HEAD\^'
abbr -ag grehard 'git reset --hard HEAD\^'
abbr -ag glog 'git log --graph --pretty='\''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --abbrev-commit --max-count=15'
abbr -ag gl "git pull; git pull origin (git branch | sed -n -e 's/^\* \(.*\)/\1/p')"
abbr -ag gp "git push origin (git branch | sed -n -e 's/^\* \(.*\)/\1/p')"
