source ~/.zplug/init.zsh

zplug "plugins/git", from:oh-my-zsh
zplug "plugins/history", from:oh-my-zsh
zplug "plugins/extract", from:oh-my-zsh
zplug "robbyrussell/oh-my-zsh", use:"lib/directories.zsh"
zplug "robbyrussell/oh-my-zsh", use:"lib/theme-and-appearance.zsh"
zplug "robbyrussell/oh-my-zsh", use:"lib/key-bindings.zsh"
zplug "robbyrussell/oh-my-zsh", use:"lib/history.zsh"
zplug "junegunn/fzf-bin", from:gh-r, as:command, rename-to:fzf, use:$([[ $OSTYPE == *darwin* ]] && echo "*darwin*amd64*" || echo "*linux*amd64*")
zplug "junegunn/fzf", use:"shell/*.zsh"
zplug "rupa/z", use:z.sh
zplug "changyuheng/fz", use:"*.zsh"
zplug "changyuheng/zsh-interactive-cd", use:"*.zsh"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "~/.zsh/script", from:local, use:"alias.zsh"
zplug "~/.zsh/script", from:local, use:"notifier.zsh"
zplug "~/.zsh/script", from:local, use:"xenv.zsh"
zplug "~/.zsh/script", from:local, use:"k5l.zsh"
zplug "~/.zsh/script", from:local, use:"fzf.zsh", defer:1
zplug "~/.zsh/themes", from:local, as:theme, use:"gentoo-placid.zsh-theme"

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load

# fnm
export PATH=/Users/placidr/.fnm:$PATH
eval "`fnm env --multi`"


# Misc
export NAMESPACE=mc-app-pr
export MC_APP_DIR=$HOME/Code/src/github.com/movio/mc-app
export GOPATH=/Users/placidr/Code
export GONOSUMDB=github.com/movio/*
export GOCACHE=/Users/placidr/gocache
export GOPROXY=https://goproxy.tools.prod.movio.co/athens
export PATH=$GOPATH/bin:$PATH
export PATH="$HOME/bin:$PATH"
# export PATH="$HOME/.nodenv/versions/12.13.1/bin:$PATH"
export PATH="$HOME/Library/Python/3.7/bin:$PATH" # this is for aws
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$HOME/Code/src/github.com/movio/scripts:$PATH"
# export PATH="$HOME/Code/src/github.com/magito:$PATH"
export AWS_PROFILE=movio-identity

[ -f /usr/libexec/java_home ] && export JAVA_HOME=$(/usr/libexec/java_home)
[ -f ~/.iterm2_shell_integration.zsh ] && test -e ${HOME}/.iterm2_shell_integration.bash && source ${HOME}/.iterm2_shell_integration.bash
[ -f ~/.iterm2_shell_integration.zsh ] && source ~/.iterm2_shell_integration.`basename $SHELL`
[ -f ~/.travis/travis.sh ] && source ~/.travis/travis.sh

decode () {
  echo "$1" | base64 -D ; echo
}

decopy () {
  echo "$1" | base64 -D | pbcopy
}

dbash () {
  docker exec -ti "$1" bash
}

mdcd () {
  md $1 && cd $1
}

# accepts ordinal number of previous commits
# can accept zero, one or two args
  # zero arg: will run `git show`
  # one arg: will show diff between the commit at given arg and the commit before that
  # two arg: will show diff between second and first commit
gshow () {
  if [ $# -eq 0 ]
  then
    git show
  elif [ $# -eq 1 ]
  then
    previous_head=`expr $1 + 1`
    git diff HEAD~$previous_head HEAD~$1
  else
    git diff HEAD~$2 HEAD~$1
  fi
}

# trying to pretty print the decoded json. not working yet.
# dejson () {
#   echo "$1" | base64 -D | xargs echo | jq .
# }
