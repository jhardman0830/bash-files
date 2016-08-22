#!/bin/bash
shopt -s expand_aliases

alias grey-grep="GREP_COLOR='1;30' grep -Pi --color=always --line-buffered"
alias red-grep="GREP_COLOR='1;31' grep -Pi --color=always --line-buffered"
alias green-grep="GREP_COLOR='1;32' grep -Pi --color=always --line-buffered"
alias yellow-grep="GREP_COLOR='1;33' grep -Pi --color=always --line-buffered"
alias cyan-grep="GREP_COLOR='1;36' grep -Pi --color=always --line-buffered"

tail -n0 -f $@ c:/svn/Logs/portals/errors/*.log c:/zend/Apache2/logs/error.log c:/zend/ZendServer/logs/php.log c:/svn/*/Logs/error.log \
		| grey-grep "==>.*<==|$" \
			| cyan-grep "(?<=\[)(INFO|NOTICE)(?=\])|$" \
				| yellow-grep "(?<=\[)(WARN|STRICT)(?=\])|$" \
					| red-grep "(?<=\[)(ERROR|FATAL)(?=\])|$" \
						| cyan-grep "PHP[\w\s]* Notice|$" \
							| yellow-grep "PHP[\w\s]* (Warning|Strict Standards)|$" \
								| red-grep "PHP[\w\s]* error|$" \
									| green-grep "\b(?<!\[)\d+(?![^\[\]]*\])\b|$" \
										| grey-grep "^\[[^\]]*\]|$"
