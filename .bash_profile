alias ls='ls -hG'
alias ll='ls -la'
alias svn=/Users/jhardman/dotfiles/scripts/svn-color.py

# Disable suspend
stty -ixon

export PATH=/usr/local/bin:/usr/local/bin/svn:/usr/local/zend/bin:/Users/jhardman/dotfiles/scripts:$PATH

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "

export CLICOLOR=1

export LSCOLORS=GxFxBxDxCxegedabagacad

if [ -f $(brew --prefix)/etc/bash_completion ]; then
	. $(brew --prefix)/etc/bash_completion
fi
