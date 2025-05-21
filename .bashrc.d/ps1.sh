#!/bin/sh

#https://bash-prompt-generator.org/
PROMPT_COMMAND='prompt_status="$?"; if [[ $prompt_status == "0" ]]; then prompt_status=; fi'
PS1='$prompt_status\[\e[0;1;36m\]\u\[\e[0;1;2;97m\]@\[\e[0;1;31m\]\h\[\e[0m\][\[\e[0;32m\]\W\[\e[0m\]]\[\e[0;1;2;97m\]\n$ \[\e[0m\]'
