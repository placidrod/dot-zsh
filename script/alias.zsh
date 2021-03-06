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
# alias go='git checkout '
alias gco='git checkout '
alias gk='gitk --all&'
alias gx='gitx --all'
alias gfp='git fetch --prune'
alias gua='git reset HEAD -- .' # git unstage all
alias gulc='git reset HEAD~' # git undo last commit
alias gaac='git add -A && git commit -m' # git add all and commit
alias grom='git rebase origin/master'
alias gpfl='git push --force-with-lease'
alias gadded='git log --diff-filter=A -- ' # which commit added a file
alias gmodified='git log --diff-filter=M -- ' # which commits modified a file
alias gdeleted='git log --diff-filter=D -- ' # which commit deleted a file
# alias gh='git hist'

# alias gol='/usr/local/opt/go/libexec/bin/go'

alias atm="$HOME/Code/src/github.com/movio/mc-atm-dev/run.sh"
alias cat=ccat

# alias kus='kubectl --context=movio-prod-us'
# alias kfr='kubectl --context=movio-prod-fr'
# alias kcn='kubectl --context=movio-prod-cn'
# alias keu='kubectl --context=movio-prod-eu'

alias kus.green='kus -n mc-green'

alias krus='kubectl --context=old-us --namespace=mc-red'
alias krfr='kubectl --context=old-fr --namespace=mc-red'
alias krcn='kubectl --context=old-cn --namespace=mc-red'
alias kreu='kubectl --context=old-eu --namespace=mc-red'

alias kgus='kubectl --context=old-us --namespace=mc-green'
alias kgfr='kubectl --context=old-fr --namespace=mc-green'
alias kgcn='kubectl --context=old-cn --namespace=mc-green'
alias kgeu='kubectl --context=old-eu --namespace=mc-green'
# alias khk='kubectl --context=old-hk --namespace=mc-app'
alias kgdev='kubectl-1.10.6 --context=movio-dev --namespace=mc-green'
alias kcap='kubectl --context movio-dev -n mc-captain-planet'
alias kvol='kubectl --context movio-dev -n mc-voltron'
alias kdev1='kubectl --context=movio-dev -n mc-app-pr'

alias repui='cd ~/Library/Application\ Support/iTerm2/Scripts/; osascript repui.scpt;'
alias autoui='cd ~/Library/Application\ Support/iTerm2/Scripts/; osascript autorepui.scpt;'
alias wysi='cd ~/Library/Application\ Support/iTerm2/Scripts/; osascript wysi.scpt;'
alias appui='cd ~/Library/Application\ Support/iTerm2/Scripts/; osascript appui.scpt;'

alias onboard='cd ~/Library/Application\ Support/iTerm2/Scripts/; osascript onboard.scpt;'
alias scpt='cd ~/Library/Application\ Support/iTerm2/Scripts/; osascript test.scpt;'

alias android-studio="open -a /Applications/Android\ Studio.app/"

##
# AWS - Helper Functions
##
source ~/.awsAliases
alias awsall="_awsListAll"
alias awslp="_awsListProfile"
alias awsp="_awsSwitchProfile"
alias awswho="aws configure list"
# alias kubectl="_k5l"
