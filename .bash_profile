# Shell Enviroment Configuration

# Bash completion 
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

HISTSIZE=10000
HISTFILESIZE=20000
GIT_PS1_SHOWCOLORHINTS=true
GIT_PS1_SHOWDIRTYSTATE=true
PROMPT_COMMAND='__git_ps1 "\u@macbook:\w" "\\\$ "'

# Alias
alias ls='ls -G'
alias ll='ls -l'
alias la='ls -a'
#alias emacs="/Applications/Emacs.app/Contents/MacOS/Emacs -nw"

# Locale
export LANG="zh_CN.UTF-8"
export LC_ALL="en_US.UTF-8"

# Path
export PATH=$PATH:$(brew --prefix)/sbin:$HOME/bin

# Golang
export GOROOT=$(brew --prefix go)/libexec
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# Java
#export JAVA_HOME=$(/usr/libexec/java_home)


