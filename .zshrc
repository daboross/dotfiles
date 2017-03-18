# Before HISTFILE
ecryptfs-mount-private
# Done manually configured
# Lines configured by zsh-newuser-install
HISTFILE=~/Private/zsh_history
HISTSIZE=5000
SAVEHIST=250000
setopt appendhistory nomatch notify
unsetopt autocd beep extendedglob
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/daboross/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines confirmed manually

# Colors
autoload -U colors && colors

# Prompt
PROMPT="%{$fg_bold[green]%}%n%{$reset_color%}:%{$fg_bold[cyan]%}%//%{$reset_color%}
$ "

# Color aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias sl='ls -al'

# Alias loading
if [[ -f ~/.bin/aliases.zsh ]]; then
    . ~/.bin/aliases.zsh
fi

# Add directories to path that might not have existed when logging in
_add_to_path() {
    if [ -d "$1" ] && [[ "$1:" != *"$PATH"* ]]; then
        export PATH="$1:$PATH"
    fi
}

_add_to_path /run/media/daboross/external/winehq/wine/bin

# ^left/^right keys (ctrl+left and ctrl+right to skip around words)
bindkey ";5C" forward-word
bindkey ";5D" backward-word
bindkey "^H" delete-char

# End of lines configured manually
