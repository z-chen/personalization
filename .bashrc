export CLICOLOR=1
export LSCOLORS=GxFxCxBxegedabagaced
export PATH=/usr/local/Cellar/node/0.6.19/bin:/usr/local/bin:/usr/local/share/python:$PATH
export NODE_PATH=/usr/local/lib/node_modules:$NODE_PATH

#. `brew --prefix`/etc/bash_completion.d/git-completion.bash 
#. $HOME/.bash_completion
#PS1='\w$(__git_ps1 "(%s)")>'
#GIT_PS1_SHOWDIRTYSTATE=1
#alias dfx='cd /Users/zhenghao/website/counsyl/product/assay/fragilex'
#alias dc='cd /Users/zhenghao/website/counsyl/product/' 
alias lh='ls -lt | head'

#2.1) Safety
alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"
set -o noclobber

#2.2) Listing, directories, and motion
alias ll="ls -alrtF --color"
alias la="ls -A"
alias l="ls -CF"
alias dir='ls --color=auto --format=vertical'
alias vdir='ls --color=auto --format=long'
alias m='less'
alias ..='cd ..'
alias ...='cd ..;cd ..'
alias md='mkdir'
alias cl='clear'
alias du='du -ch --max-depth=1'
alias treeacl='tree -A -C -L 2'

#2.3) Jump to common directories
alias desk='cd ~/Desktop'
alias doc='cd ~/Documents'
alias dl='cd ~/downloads'

alias lesst='less -S --tab=40'
alias lessrs='less -R -S'
alias curlso='curl -s -O' # download a single URL silently, writing to the same file extensions
alias gtime="/usr/bin/time -v " #VERY useful. GNU Time crushes the bash builtin
export PATH=/usr/local/Cellar/ruby/1.9.3-p194/bin:/usr/local/Cellar/node/0.6.19/bin:/usr/local/bin:/usr/local/share/python:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/local/git/bin


# Bash prompt
# show git branches in bash prompt
function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

function proml {
    local         RED="\[\033[0;31m\]"
    local   LIGHT_RED="\[\033[1;31m\]"
    local      YELLOW="\[\033[0;33m\]"
    local LIGHT_GREEN="\[\033[1;32m\]"
    local       WHITE="\[\033[1;37m\]"
    local  LIGHT_GRAY="\[\033[0;37m\]"
    local LIGHT_PURPLE="\[\033[1;34m\]"
    case $TERM in
      xterm*)
      TITLEBAR='\[\033]0;\u@\h:\w\007\]'
      ;;
      *)
      TITLEBAR=""
      ;;
    esac

    PS1="${TITLEBAR}$LIGHT_RED\w$WHITE $(parse_git_branch) $LIGHT_GRAY\$ "
}
proml
