# Profile file! Used for both .zprofile and .profile

if [ "$0" = "/usr/sbin/lightdm-session" -a "$DESKTOP_SESSION" = "i3" ]; then
    export $(gnome-keyring-daemon -s)
fi

add_to_path() {
    if [ -d "$1" ]; then
        export PATH="$1:$PATH"
    fi
}

add_to_path "$HOME/.bin"
add_to_path "$HOME/.bin/aliases"
add_to_path "$HOME/.local/bin"
add_to_path "$HOME/.local/opt/android-sdk-linux/platform-tools"
add_to_path "$HOME/.local/opt/android-sdk-linux/tools"
add_to_path "$HOME/.local/opt/apache-maven-3.3.9/bin"
add_to_path "$HOME/.local/opt/apache-ant-1.9.6/bin"
add_to_path "$HOME/.local/opt/node-v6.10.0-linux-x64/bin"
add_to_path "$HOME/.cargo/bin"
add_to_path "$HOME/node_modules/.bin"
add_to_path "$HOME/Projects/CheckedOut/mxe/usr/bin"
add_to_path "/run/media/daboross/external/winehq/wine/bin"

export IBUS_ENABLE_SYNC_MODE=1
export RUST_NEW_ERROR_FORMAT=true
#export JAVA_HOME="$(dirname "$(dirname "$(dirname "$(readlink -f "$(which java)")")")")"
