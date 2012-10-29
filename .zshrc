# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

ZSH_THEME="zhenghao"

# python
export PYTHONSTARTUP=$HOME/.pythonrc.py
export PATH=$PATH:/Users/zhenghao/base/coursera/play/play/play-2.0.3

# 
# alias 
# 

#ssh aliases
alias sadmin='ssh zhenghao@admin.campus-class.org' 
alias wbservice='ssh ubuntu@ec2-23-22-13-183.compute-1.amazonaws.com -i /Users/zhenghao/workbench-admin.pem'
alias wbtest='ssh ubuntu@ec2-174-129-145-19.compute-1.amazonaws.com -i /Users/zhenghao/workbench-admin.pem'

#cd alias for dev
alias cdsite='cd ~/base/coursera/site'
alias cdsp='cd ~/base/coursera/spark'
alias cdspm='cd ~/base/coursera/spark-modules'
alias cdspa='cd ~/base/coursera/spark-assets'
alias cdclar='cd ~/base/coursera/clarity'
alias cdcas='cd ~/base/coursera/cascade'
alias cdplay='cd ~/base/coursera/play'
alias cdstand='cd ~/base/coursera/standalone'

plugins=(git django pip python brew node npm vagrant jira autojump)

source $ZSH/oh-my-zsh.sh

# vim restore/suspend
foreground-vi() {
      fg %vi
  }
  zle -N foreground-vi
  bindkey '^Z' foreground-vi


# remove git status stuff
function git_prompt_info() {
    ref=$(git symbolic-ref HEAD 2> /dev/null) || return
    echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

function __git_files () { 
    _wanted files expl 'local files' _files     
}

export CLICOLOR=1
#export LSCOLORS=GxFxCxBxegedabagaced
export PATH=/usr/local/share/npm/bin/:/usr/local/Cellar/node/0.6.19/bin:/usr/local/bin:/usr/local/share/python:$PATH
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
