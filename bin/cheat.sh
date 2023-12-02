#!/usr/bin/env bash
languages=$(echo "golang lua cpp c asm rust java racket javascript typescript nodejs sql" | tr ' ' '\n')
core_utils=$(echo "xargs find mv sed awk" | tr ' ' '\n')
selected=$(echo -e "$languages\n$core_utils" | rofi -dmenu -i -theme gruvbox-dark)

# selected=`printf "$languages\n$core_utils" | rofi -dmenu -i -theme gruvbox-dark`
if [[ -z $selected ]]; then
    exit 0
fi

query=$(rofi -dmenu -p "Enter Query: ")
# read -p "Enter Query: " query

if echo $languages | grep -qs $selected; then
    tmux neww bash -c "curl -s cheat.sh/$selected/$(echo "$query" | tr " " "+") | less -r"
else
    tmux neww bash -c "curl -s cheat.sh/$selected~$query | less -r"
fi  
