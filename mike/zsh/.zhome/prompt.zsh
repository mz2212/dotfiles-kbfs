#!/bin/zsh

# Prompt setup

function () {
	[[ -v SSH_CLIENT ]] && local host="@%F{magenta}%m" || local host=""
	PROMPT="%F{green}%n$host%f:%F{blue}%B%2~%b%f> "
	RPROMPT="%D %T"
}