alias docker-ip="docker inspect --format '{{ .NetworkSettings.IPAddress }}'"
alias rm="echo Use 'trash', or the full path i.e. '/bin/rm' if you really want to"
alias safe-rm="echo Use 'trash', or the full path i.e. '/bin/rm' if you really want to"
alias updatedb="sudo /usr/libexec/locate.updatedb"
alias brew-dep='brew list | while read cask; do echo -n $fg[blue] $cask $fg[white]; brew deps $cask | awk '"'"'{printf(" %s ", $0)}'"'"'; echo ""; done'
alias tn="terminal-notifier -sound default -message "

alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '
alias gk='gitk --all&'
alias gx='gitx --all'
alias gfp='git fetch --prune'
alias grom='git rebase origin/master'
alias gpfl='git push --force-with-lease'

alias gol='/usr/local/opt/go/libexec/bin/go'

alias atm="$HOME/Code/src/github.com/movio/mc-atm-dev/run.sh"
alias cat=ccat

alias kus='kubectl --context=us'
alias kfr='kubectl --context=fr'
alias kcn='kubectl --context=cn'

