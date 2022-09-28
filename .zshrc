
source ~/.42helpers/tools/rc.sh

# Load Homebrew config script
source $HOME/.brewconfig.zsh

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
alias "now"='date +"%T"'


# Zsh
alias "desk"="cd ~/Desktop"



###   PROMPT   ###

PROMPT='%F{green}%m%f:%F{cyan}%B%~%b%f$ '

export PROMPT

