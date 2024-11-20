# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

export PATH="$HOME/.local/bin:$HOME/.local/bin/go/bin:$HOME/bin/go/bin:$HOME/.go/bin:$HOME/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:/usr/games"

umask 002

ulimit -S -c 0 # Don't want any coredumps

set -o notify # Tell me about background jobs right away
set -o emacs  # Set Emacs mode

export EDITOR=vim
export PAGER=less
export VISUAL=vim
export MANPAGER="less"
export BROWSER=firefox
export TZ='Europe/Berlin'
export GREP_COLOR='mt=1;31'
export LANG=en_US.UTF-8
export DOTFILES="~/Dotfiles"

# Golang
export GOROOT="$HOME/.local/bin/go"
export GOPATH="$HOME/.cache/go"

# LESS man page colors (makes Man pages more readable).
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

# Disable CTRL-S and CTRL-Q and control character echoing
[[ $- =~ i ]] && stty -ixoff -ixon; stty -ctlecho 

# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth:erasedups

# automatically cd into directory
shopt -s autocd

# correct cd typos
shopt -s cdspell

# no empty command completion
shopt -s no_empty_cmd_completion

# append to the history file, don't overwrite it
shopt -s histappend

# set size and length to infinite
HISTSIZE=
HISTFILESIZE=

# ignore this history entries
HISTIGNORE="sl:ll:ls:l:history:cd:lx"

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# enable programmable completion features
if [ -f /usr/share/bash-completion/bash_completion ]; then
   . /usr/share/bash-completion/bash_completion
fi

if [ `id -u` == "0" ]; then
	export PS1="(\[\033[01;31m\]root\[\033[00m\]) \[\033[01;91m\][\[\033[00m\]\[\033[01;92m\]\h\[\033[00m\] \[\033[01;96m\]\w\[\033[00m\]\[\033[01;91m\]]\[\033[00m\] \[\033[01;31m\]\\$\[\033[00m\] "
else
   export PS1="\[\033[01;91m\][\[\033[00m\]\[\033[01;92m\]\h\[\033[00m\] \[\033[01;96m\]\w\[\033[00m\]\[\033[01;91m\]]\[\033[00m\] \[\033[01;31m\]\\$\[\033[00m\] "
fi
export PS2="\[\033[01;31m\] > \[\033[00m\]"

# source aliases
source $HOME/.bash_aliases

# print welcome message/fortune
source $HOME/.bash_greetings

# functions
function timezones() {
	echo "`TZ='America/New_York' date \"+%H:%M\"` New York"
	echo "`TZ='Europe/Moscow' date \"+%H:%M\"` Moscow"
	echo "`TZ='Asia/Shanghai' date \"+%H:%M\"` Shanghai"
	echo "`TZ='Asia/Tokyo' date \"+%H:%M\"` Tokyo"
	echo "`TZ='Australia/Sydney' date \"+%H:%M\"` Sydney"
}

function show_nonfree() {
	dpkg-query -W -f='${Section} ${Package}\n' | awk '/^non-free/ {print $2}'
}
