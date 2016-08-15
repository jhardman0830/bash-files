alias ls='ls -hG'
alias ll='ls -la'
alias up='. ~/bin/update.sh'
alias status='. ~/bin/status.sh'
alias svn=/Users/jhardman/bin/svn-color.py

export PATH=/usr/local/bin/svn:/usr/local/zend/bin:$PATH

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "

export CLICOLOR=1

export LSCOLORS=GxFxBxDxCxegedabagacad

if [ -f $(brew --prefix)/etc/bash_completion ]; then
	. $(brew --prefix)/etc/bash_completion
fi
