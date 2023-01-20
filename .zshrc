# https://tangible-harbor-c59.notion.site/FT_Cursus-98f688bd250a4601b6e55ac699d17cb0
# https://find-peers.codam.nl/Rome


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
alias "c"="clear; printf '\e[3J'"
alias "v"="vim"
alias ".."="cd .."
alias "now"='date +"%T"'


# Zsh
alias "desk"="cd ~/Desktop"


###   PROMPT   ###
BLUE="\e[1;34m"
GREEN="\e[1;32m"
RED="\e[31m"
END="\e[0m"

EXITSTATUS="\`if [ \$? = 0 ]; then echo '${GREEN}'; else echo '${RED}'; fi\`"

#PS1="${EXITSTATUS}\u${END}:${BLUE}\w${END}$ "
#export PS1

PROMPT='%F{green}%m%f:%F{cyan}%B%~%b%f%# '
export PROMPT

alias "g"="gcc -Werror -Wextra -Wall"

alias "cmac"="(df -h | grep /Users/tde-nico | grep -ioE '[0-9]\.[0-9]' | awk 'NR%2!=1' ; \\
find ~/Desktop -name \"._*\" -delete ; \\
rm -rf ~/Library/*.42* &>/dev/null ; \\
rm -rf ~/*.42* &>/dev/null ; \\
rm -rf ~/.zcompdump* &>/dev/null ; \\
rm -rf ~/.cocoapods.42_cache_bak* &>/dev/null ; \\
rm -rf ~/.Trash/* &>/dev/null ; \\
chmod -R 777 ~/Library/Caches/Homebrew &>/dev/null ; \\
rm -rf ~/Library/Caches/* &>/dev/null ; \\
rm -rf ~/Library/Application\\ Support/Caches/* &>/dev/null ; \\
rm -rf ~/Library/Application\\ Support/Slack/Service\\ Worker/CacheStorage/* &>/dev/null ; \\
rm -rf ~/Library/Application\\ Support/Code/User/workspaceStorage/* &>/dev/null ; \\
rm -rf ~/Library/Application\\ Support/discord/Cache/* &>/dev/null ; \\
rm -rf ~/Library/Application\\ Support/discord/Code\\ Cache/js* &>/dev/null ; \\
rm -rf ~/Library/Application\\ Support/Google/Chrome/Profile\\ [0-9]/Service\\ Worker/CacheStorage/* &>/dev/null ; \\
rm -rf ~/Library/Application\\ Support/Google/Chrome/Default/Service\ Worker/CacheStorage/* &>/dev/null ; \\
rm -rf ~/Library/Application\\ Support/Google/Chrome/Profile\\ [0-9]/Application\\ Cache/* &>/dev/null ; \\
rm -rf ~/Library/Application\\ Support/Google/Chrome/Default/Application\\ Cache/* &>/dev/null ; \\
find ~/Desktop -name .DS_Store -depth -exec rm {} \\; &>/dev/null ; \\
rm -rf ~/Library/Application\\ Support/Chromium/Default/File\\ System &>/dev/null ; \\
rm -rf ~/Library/Application\\ Support/Chromium/Profile\\ [0-9]/File\\ System &>/dev/null ; \\
rm -rf ~/Library/Application\\ Support/Google/Chrome/Default/File\\ System &>/dev/null ; \\
rm -rf ~/Library/Application\\ Support/Google/Chrome/Profile\\ [0-9]/File\\ System &>/dev/null ; \\
df -h | grep /Users/tde-nico | grep -ioE '[0-9]\.[0-9]' | awk 'NR%2!=1') \\
2> /dev/null | tr '\n' ' ' | sed '\$s/ $//'"

if [ "${PWD}" = "${HOME}" ]; then
	swift dark.swift
	desk
	c
	cmac
fi

