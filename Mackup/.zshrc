#!/usr/local/bin/zsh
################################################################################################################################################
# Variables & Environment variables (variables exported to child processes)
################################################################################################################################################
## Variables
brew_prefix="/usr/local"

## Environment variables
export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8
export TERM="xterm-256color"
# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi
export VISUAL='nvim'
# Compilation flags
export ARCHFLAGS="-arch x86_64"

## PATH environment variable
# Homebrew paths
export PATH="$brew_prefix/bin:$brew_prefix/sbin:$PATH"

################################################################################################################################################
# Antidote - zsh plugin manager
################################################################################################################################################
source $brew_prefix/opt/antidote/share/antidote/antidote.zsh
antidote load

################################################################################################################################################
# Oh-my-zsh - zsh framework & plugin manager, also a dependency for many of the plugins instlled via Antidote
################################################################################################################################################
export ZSH="/Users/div/Library/Caches/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-ohmyzsh-SLASH-ohmyzsh"
plugins=()

################################################################################################################################################
# Aliases
################################################################################################################################################
alias nv="nvim"
# eza command-line utility (gnu-ls alternative)
eza_params=('--all' '--icons=always' '--classify' '--group-directories-first' '--time-style=long-iso' '--group' '--color-scale' '--hyperlink')
alias ls='eza $eza_params'
alias ll='eza -lbhHigUmuSa@ $eza_params'
alias lt='eza --tree --level=2 $eza_params'

# Directory shortcuts
alias dt='cd ~/Desktop/'
alias dl='cd ~/Downloads/'
alias apps='cd /Applications/'

################################################################################################################################################
# Additional Programs
################################################################################################################################################
# Run if current shell is interactive
if [[ -o interactive ]]; then
    # broot - terminal file explorer
    source ~/.config/broot/launcher/bash/br
fi

