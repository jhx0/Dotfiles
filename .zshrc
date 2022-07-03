autoload -U colors
colors

PATH="$HOME/bin:$HOME/scripts:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:/usr/games"

LANG=en_US.UTF-8
EDITOR=vim
PAGER=less
MANPAGER=less
VISUAL=vim
BROWSER=firefox
TZ='Europe/Berlin'
GREP_COLOR='1;31'

# LESS man page colors (makes Man pages more readable).
LESS_TERMCAP_mb=$'\E[01;31m'
LESS_TERMCAP_md=$'\E[01;31m'
LESS_TERMCAP_me=$'\E[0m'
LESS_TERMCAP_se=$'\E[0m'
LESS_TERMCAP_so=$'\E[01;44;33m'
LESS_TERMCAP_ue=$'\E[0m'
LESS_TERMCAP_us=$'\E[01;32m'

PS1="%B%F{9}%m%F{reset} %B%F{14}%~%F{reset} %B%F{9}$%F{reset} %b"

# Right prompt setup
# RPROMPT="[%{$fg[green]%}%T%{$reset_color%}]"

# don't reserve space on the right
# ZLE_RPROMPT_INDENT=0

if [ -f $HOME/.alias ]; then
	source $HOME/.alias
fi

watch=all                       # watch all logins
logcheck=30                     # every 30 seconds
WATCHFMT="%n from %M has %a tty%l at %T %W"

HISTFILE=~/.zsh_history         # where to store zsh config
HISTSIZE=1024                   # big history
SAVEHIST=1024                   # big history

setopt append_history           # append
setopt hist_ignore_all_dups     # no duplicate
unsetopt hist_ignore_space      # ignore space prefixed commands
setopt hist_reduce_blanks       # trim blanks
setopt hist_verify              # show before executing history commands
setopt inc_append_history       # add commands as they are typed, don't wait until shell exit 
setopt share_history            # share hist between sessions
setopt bang_hist                # !keyword

setopt auto_cd                  # if command is a path, cd into it
setopt auto_remove_slash        # self explicit
setopt chase_links              # resolve symlinks
setopt correct                  # try to correct spelling of commands
setopt extended_glob            # activate complex pattern globbing
setopt glob_dots                # include dotfiles in globbing

autoload -U compinit
compinit

setopt hash_list_all            # hash everything before completion
setopt completealiases          # complete alisases
setopt always_to_end            # when completing from the middle of a word, move the cursor to the end of the word    
setopt complete_in_word         # allow completion from within a word/phrase
setopt list_ambiguous           # complete as much of a completion until it gets ambiguous.
setopt interactivecomments
setopt longlistjobs             # display PID when suspending processes as well
setopt notify                   # report the status of backgrounds jobs immediately
setopt nobeep

# report about cpu-/system-/user-time of command if running longer than
# 5 seconds
REPORTTIME=5

# watch for everyone but me and root
watch=(notme root)

# mailchecks
MAILCHECK=30

# source syntax highlighting for zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# emacs mode
bindkey -e

# complete . and ..
zstyle ':completion:*' special-dirs true

# navigate with arrow keys
# zstyle ':completion:*' menu select

# dont show . and ..
zstyle -e ':completion:*' special-dirs '[[ $PREFIX = (../)#(|.|..) ]] && reply=(..)'

# aliases
alias ls="ls --color"
