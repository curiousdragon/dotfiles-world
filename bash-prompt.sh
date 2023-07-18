# Bash prompt:
# \t = current time in format HH:MM:SS
# \W = basename of $PWD ($HOME shown as ~)
#
# This prompt therefore looks like:
# [user@host] (env) 24:59:59 current folder $ type commands here!
export PS1="[\u@\h] \[\033[0;36m\]\t \[\033[1;34m\]\W\[\033[0m\] \$ "
