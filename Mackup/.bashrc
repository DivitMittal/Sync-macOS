#!/usr/bin/env bash
##########################################################################################################
# Variables & Environment Variables (exported variables to child processes)
##########################################################################################################
## Variables
brew_prefix='/usr/local'
PS1="%F{cyan}%~%f %# "

## Environment Variables
export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8
export TERM='xterm-256color'
# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='nvim'
fi
export VISUAL='nvim'
# Compilation flags
export ARCHFLAGS='-arch x86_64'

## PATH environment variable
# Homebrew paths
export PATH="$PATH:$brew_prefix/bin:$brew_prefix/sbin"

##########################################################################################################
# Aliases
##########################################################################################################
# Utilities
alias nv="nvim"
alias ls="ls -aF"
alias ll="ls -lbhHigUmuSa"

# Directory shortcuts
alias dt="cd $HOME/Desktop/"
alias dl="cd $HOME/Dowsloads/"
alias apps="cd /Applications/"

##########################################################################################################
# Initializations
##########################################################################################################
# Run if current shell is interactive
if [[ $- == *i* ]]; then
    # vi key bindings
    set -o vi

    # Bash completions
    [[ -r "$brew_prefix/etc/profile.d/bash_completion.sh" ]] && . "$brew_prefix/etc/profile.d/bash_completion.sh"

    # Starship - CLI prompt
    if type starship &> /dev/null; then
        eval "$(starship init bash)"
    fi

    # broot - terminal file explorer
    if type broot &> /dev/null; then
        source ~/.config/broot/launcher/bash/br
    fi
fi

