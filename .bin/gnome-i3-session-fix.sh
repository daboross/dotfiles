#!/bin/bash

# https://github.com/lvillani/i3-gnome/blob/master/session/i3-gnome

# Register with gnome-session so that it does not kill the whole session thinking it is dead.
if [[ ! -z "$DESKTOP_AUTOSTART_ID" ]]; then
    dbus-send --print-reply --session --dest=org.gnome.SessionManager "/org/gnome/SessionManager" org.gnome.SessionManager.RegisterClient "string:i3-gnome" "string:$DESKTOP_AUTOSTART_ID"
fi

# Fix the missing cursor problem
dconf write /org/gnome/settings-daemon/plugins/cursor/active false

# Disable Gnome Shell's App Menu, so that lost menu items are shown again.
gsettings set org.gnome.settings-daemon.plugins.xsettings overrides '@a{sv} {"Gtk/ShellShowsAppMenu": <int32 0>}'
