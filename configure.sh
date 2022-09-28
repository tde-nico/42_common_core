#!/bin/bash


QUOTE="'"

BASH="/bin/bash"
ZSH="/bin/zsh"

RC=""


###   ALIAS   ###

COMMON_ALIASES='''
###   ALIAS   ###

# Git
alias "gcl"="git clone"
alias "add"="git add"
alias "stat"="git status"
alias "gc"="git commit -m"
alias "glog"="git log"
alias "pull"="git pull"
alias "push"="git push"

# Make
alias "m"="make"
alias "r"="make run"
alias "rr"="make rrun"

# Python
alias "py"="python3"
alias "www"="python3 -m http.server 8000"

# Sh
alias "c"="clear"
alias "v"="vim"
alias ".."="cd .."
alias "now"='${QUOTE}'date +"%T"'${QUOTE}'
'''

BASH_ALIASES='''
# Bash
alias "desk"="cd / ; cd mnt/c/Users/tommy/Desktop"
alias "dpy"="cd / ; cd mnt/c/Python"
alias "upgrade"="sudo apt-get update && sudo apt-get upgrade"
'''

ZSH_ALIASES='''
# Zsh
alias "desk"="cd ~/Desktop"
'''

###   PROMPT   ###

BASH_PROMPT='''
###   PROMPT   ###
BLUE="\[\033[1;34m\]"
GREEN="\[\033[1;32m\]"
RED="\[\033[31m\]"
END="\[\033[00m\]"

EXITSTATUS="\`if [ \$? = 0 ]; then echo '${QUOTE}'${GREEN}'${QUOTE}'; else echo '${QUOTE}'${RED}'${QUOTE}'; fi\`"

export PS1="${EXITSTATUS}\u${END}:${BLUE}\w${END}$ "
'''

ZSH_PROMPT='''
###   PROMPT   ###

PROMPT='${QUOTE}'%F{green}%m%f:%F{cyan}%B%~%b%f$ '${QUOTE}'

export PROMPT
'''


###   INSERT CONFIG   ###


if [ "${SHELL}" = "${BASH}" ]; then
	RC=~/.bashrc
elif [ "${SHELL}" = "${ZSH}" ]; then
	RC=~/.zshrc
fi


if [ "${RC}" != "" ]; then
	echo "${COMMON_ALIASES}" >> $RC
fi


if [ "${SHELL}" = "${BASH}" ]; then
	echo "${BASH_ALIASES}" >> $RC
	echo "${BASH_PROMPT}" >> $RC
elif [ "${SHELL}" = "${ZSH}" ]; then
	echo "${ZSH_ALIASES}" >> $RC
	echo "${ZSH_PROMPT}" >> $RC
fi

