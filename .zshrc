# Path to your oh-my-zsh installation.
export ZSH=/Users/nanw/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="myfishymod"
#ZSH_THEME="pygmalion"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# automatically upgrade itself without prompting
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=~/.zsh

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# !!! Note that zsh-syntax-highlighting must be the last plugin sourced, so make it the last element of the $plugins array.
plugins=(git history extract nvm colored-man-pages sublime autojump zsh-syntax-highlighting)
## safe-paste does not work with history up arror key search why?

# User configuration
# export GOROOT=/usr/local/Cellar/go/1.8.3/libexec
# export GOPATH=$HOME/Go
# export PATH="/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$GOROOT/bin:$GOPATH/bin"

# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export JAVA_HOME=$(/usr/libexec/java_home)

#alias ll='ls -lGa'
#export PS1="\[\e[31m\]\u\[\e[m\]@\h:\[\e[31m\]\w\[\e[m\]\\$ "

# Docker alias
# Remove these two because of switch to dlite
# alias docker-init="source /Applications/Docker/Docker\ Quickstart\ Terminal.app/Contents/Resources/Scripts/start.sh"
# alias docker-shutdown="VBoxManage controlvm default acpipowerbutton"
alias docker-ip="docker inspect --format '{{ .NetworkSettings.IPAddress }}'"

# PyPy alias (using virtualenv)
alias pypy-on="source ~/.pypy/pypy2_env/bin/activate"
alias pypy-off="deactivate"

test -e ${HOME}/.iterm2_shell_integration.bash && source ${HOME}/.iterm2_shell_integration.bash

# For iterm2 intergration
source ~/.iterm2_shell_integration.`basename $SHELL`

alias rm="echo Use 'trash', or the full path i.e. '/bin/rm' if you really want to"
alias safe-rm="echo Use 'trash', or the full path i.e. '/bin/rm' if you really want to"
alias updatedb="sudo /usr/libexec/locate.updatedb"
alias brew-dep='brew list | while read cask; do echo -n $fg[blue] $cask $fg[white]; brew deps $cask | awk '"'"'{printf(" %s ", $0)}'"'"'; echo ""; done'
