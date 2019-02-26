#
# ~/.bashrc
#
export VISUAL="vim"
export TERM=xterm-color
export EDITOR="vim"
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

BLUE="\[\033[1;34m\]" 
RED="\[\033[0;31m\]" 
GREEN="\[\033[0;32m\]" 
ORANGE="\[\033[0;33m\]" 
WHITE="\[\033[00m\]"

case $TERM in 	
	xterm*) 		
		BOLD=$WHITE ;;
 	*)
		BOLD="\[\033[0;38m\]" ;; 
esac

archey3 
alias ls='ls --color=auto'

if [ $EUID -eq 0 ] ; then
	PS1="$RED||$WHITE[\u@\h]$RED||$WHITE[\t]$RED||$WHITE[\D{%d-%m-%g}]$RED||$WHITE[\w]$RED||$WHITE\n\\$" 
else 	
	PS1="$BOLDi$BLUE\h$WHITE:$BLUE\u | $BOLD\D{%c} $BLUE| \w$WHITE\n$BOLD\\$ $WHITE" 
fi
#PS1='[\u@\h \W]\$ '
