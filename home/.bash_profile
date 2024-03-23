# .bash_profile -*- mode: sh -*-
# loaded on interactive login, in the following order, 1.~/.bash_profile 2.~/.bash_login 3.~/.profile

export BADOTDIR="$HOME/.config/bash"

# Load interactive login settings
if [[ -f $BADOTDIR/.profile ]]; then
  source $BADOTDIR/.profile
fi

# Load interactive non-login settings
if [[ -f $HOME/.bashrc ]]; then
  source $HOME/.bashrc
fi

