#!/usr/bin/env bash

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
	echo "You should source this file"
	echo ". $0"
	exit
fi


function c(){
	cd "$@" ; ls -ls
}

function w(){ # waiting but works with aliases/functions
	val="$(eval "$@")"
	echo "$val"
	while sleep 1; do
		new_val="$(eval "$@")"
		[[ "$val" == "$new_val" ]] && continue
		val="$new_val"
		clear
		date
		echo "$val"
	done
}

alias ..='c ..'
alias ...='c ../..'
alias ....='c ../../..'
alias .....='c ../../../..'

alias g='grep'
alias gv='grep -v'

alias p='ps -eaf'
alias pg='p | g'



