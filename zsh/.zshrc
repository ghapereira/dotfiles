# Path to your oh-my-zsh installation.
export ZSH=/home/gustavo/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git)

# User configuration

export VISUAL=vim
export EDITOR="$VISUAL"

export LANGUAGE="en"
export LANG="C"
export LC_MESSAGES="C"

source $ZSH/oh-my-zsh.sh

# Virtualenvwrapper
source /usr/local/bin/virtualenvwrapper.sh

set -o vi
bindkey -M vicmd '?' history-incremental-search-backward

# Personal
alias open='function _myopen() {nohup xdg-open $1 > /dev/null 2>/dev/null &;};_myopen'
alias ll='ls -lAXh --color=always'
alias tig='$HOME/bin/tig'
alias tigal='tig --all'
alias fit='git'
alias lop='git log --author="ghapereira" --pretty=tformat: --numstat | awk '\''{sumadd +=$1; sumrem += $2} END {print sumadd, sumrem;}'\'''
alias editsh='vim ~/.zshrc'
alias srsh='source ~/.zshrc'
alias lag='ag --pager="less -XFR"'
