if [[ "$DESKTOP_SESSION" == "i3" ]] && not [ -n "$SSH_AUTH_SOCK" ]; then
    eval $(gnome-keyring-daemon --start)
    export SSH_AUTH_SOCK
fi
