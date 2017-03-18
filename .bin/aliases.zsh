#!/bin/bash
l() {
    unset -v LATEST
    local LATEST="$1"
    for FILE in "$@"; do
        if [[ "$FILE" -nt "$LATEST" || (! -e "$LATEST" && -e "$FILE") ]]; then
            LATEST="$FILE"
        fi
    done
    echo $LATEST
}

# Custom aliases (I like to have 3-4 letter names for each project to cd to that directory, if you'd want that here)



# Nice list of how much space anything is taking up in a directory.
dur() {
    if [[ -z "$1" ]]; then
        local dur='.'
    else
        local dur="$1"
    fi
    find "$dur" -maxdepth 1 -exec du -hs {} \; | sort -h
}

# Exit (do some stuff;e)
alias e="exit"

# xdg-open shortcut
xd() {
    for i in "$@"; do
        xdg-open "$i"
    done
}

# Find processes and look at them nicely (probably a better way to do this)
alias psux="ps ux | grep -v grep | grep -i "
alias tree="tree -a"

# Find files with a given text in their name (case insensitive)
maxfind() {
    find . -maxdepth 6 -iname "*${*}*"
}

maxfind20() {
    find . -maxdepth 20 -iname "*${*}*"
}

alias off='systemctl poweroff'

alias subl='subl3'

hsgrep() {
    # tag | awk ... | tac will remove all but the last instance of a repeated line
    # the awk statement removes duplicated lines, but leaves the first instance - so we reverse the output, and then run awk, and reverse the output again in order to end up with the latest usage of a repeated command showing instead of the first
    grep --color=always -i "$@" ~/Private/zsh_history | tac | awk '!_[$0]++{print}' | tac
}
