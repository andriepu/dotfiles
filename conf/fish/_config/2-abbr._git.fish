abbr -a -g gc 'git checkout'
abbr -a -g gcm 'git checkout master'
abbr -a -g gst 'git status -s'
abbr -a -g gd 'git diff'
abbr -a -g ga 'git add -A'
abbr -a -g gbd 'git branch -D'
abbr -a -g gcmsg 'git commit -m'
abbr -a -g gacmsg 'git add -A; git commit -m'
abbr -a -g gre 'git reset'
abbr -a -g gresoft 'git reset --soft HEAD\^'
abbr -a -g grehard 'git reset --hard HEAD\^'
abbr -a -g glog 'git log --graph --pretty='\''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --abbrev-commit --max-count=15'
abbr -a -g gl "git pull; git pull origin (git branch | sed -n -e 's/^\* \(.*\)/\1/p')"
abbr -a -g gp "git push origin (git branch | sed -n -e 's/^\* \(.*\)/\1/p')"
