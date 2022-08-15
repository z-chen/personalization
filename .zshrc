# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

ZSH_THEME="zhenghao"

# python
export PYTHONSTARTUP=$HOME/.pythonrc.py
export PATH=$PATH:/Users/zhenghao/opt/anaconda3/bin/

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
export PATH=/usr/local/share/npm/bin/:/usr/local/Cellar/node/0.6.19/bin:/usr/local/bin:/usr/local/share/python:$PATH
export NODE_PATH=/usr/local/lib/node_modules:$NODE_PATH

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

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/zhenghao/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/zhenghao/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/zhenghao/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/zhenghao/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/zhenghao/google-cloud-sdk 2/path.zsh.inc' ]; then . '/Users/zhenghao/google-cloud-sdk 2/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/zhenghao/google-cloud-sdk 2/completion.zsh.inc' ]; then . '/Users/zhenghao/google-cloud-sdk 2/completion.zsh.inc'; fi

# Set history
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
setopt HIST_VERIFY               # Don't execute immediately upon history expansion.

