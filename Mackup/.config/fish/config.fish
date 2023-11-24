################################### ADDING TO THE PATH ####################################################
# Delete all previous paths in current fish terminal session
set --erase fish_user_paths

fish_add_path /usr/local/bin
fish_add_path /usr/local/sbin
fish_add_path /System/Library/PrivateFrameworks/Apple80211.framework/Resources #Airport Utility

#################################### Setting environment variables ########################################
# Removes the default fish greeting
set fish_greeting

# Sets the default editor to neovim
set -x EDITOR "nvim"
set -x VISUAL "nvim"

################################################### Aliases #################################################
# Mapping "ls" to "eza"
alias ll='eza -al --icons --color=always --group-directories-first --header' # long format
alias la='eza -a --icons --color=always --group-directories-first'  # all
alias ls='eza --icons --color=always --group-directories-first'  # prefered
alias lt='eza -aT --icons --level=1 --color=always --group-directories-first' # tree listing
alias lt2='eza -aT --icons --level=2 --color=always --group-directories-first' # tree listing with depth 2
alias l.='eza -a | egrep "^\."' # hidden files only

# Directory shortcuts
alias dt='cd ~/Desktop/'
alias dl='cd ~/Downloads/'
alias apps='cd /Applications/'

# Brew ultimate alias
alias brew-ultimate='brew update; and brew upgrade; and brew autoremove; and brew cleanup -s; and brew bundle dump --file=~/.Brewfile --force; and rm -rf (brew --cache); and brew cleanup'

# Enable aliases to be sudo’ed
alias sudo="sudo "

# Recursively delete `.DS_Store` files
alias cleanup-DS="find . -type f -name '*.DS_Store' -ls -delete"

# Empty the Trash on all mounted volumes and the main HDD.
# Also, clear Apple’s System Logs to improve shell startup speed.
alias empty-trash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl; sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'"

# Navigation
alias .2='cd ../..'
alias .3='cd ../../..'

# Utils
alias nv='nvim'

####################### Additional Language/Software Specific ##############################################
### Java
# Java utils
fish_add_path /usr/local/opt/openjdk/bin
# compiler flags
set -gx CPPFLAGS "-I/usr/local/opt/openjdk/include"

## Ruby
# ruby utils
fish_add_path /usr/local/opt/ruby/bin
# Ruby linker & compiler flags
set -gx LDFLAGS "-L/usr/local/opt/ruby/lib"
set -gx CPPFLAGS "-I/usr/local/opt/ruby/include"

# Postgresql
# fish_add_path /usr/local/opt/postgresql@15/bin #Postgresql
# set -gx LDFLAGS "-L/usr/local/opt/postgresql@15/lib"
# set -gx CPPFLAGS "-I/usr/local/opt/postgresql@15/include"

# fish_add_path (brew --prefix coreutils)/libexec/gnubin
# fish_add_path (brew --prefix make)/libexec/gnubin
# fish_add_path /Users/divitmittal/.emacs.d/bin #Doom Emacs
# fish_add_path (brew --prefix gcc)/bin #GNU compiler collection

# FZF - fuzzy finder
set -x FZF_DEFAULT_OPTS '--multi --cycle'
set -x FZF_DEFAULT_COMMAND 'fd --hidden --exclude=.git'
 # set -x FZF_CTRL_T_COMMAND "fd --type f --hidden --exclude=.git"
set -x FZF_CTRL_T_COMMAND "command find -L \$dir -type f 2> /dev/null | sed '1d; s#^\./##'"
set -x FZF_ALT_C_COMMAND "fd --type d --hidden --exclude=.git" #

############################## Initializations ########################################################
# Run Fastfetch
switch $TERM_PROGRAM
        case "*WezTerm*"
                fastfetch
end

# Starship custom prompt
starship init fish | source

# Zoxide utility
zoxide init fish | source
alias c='z'


# conda initialize
if test -f /usr/local/Caskroom/miniconda/base/bin/conda
    eval /usr/local/Caskroom/miniconda/base/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/usr/local/Caskroom/miniconda/base/etc/fish/conf.d/conda.fish"
        . "/usr/local/Caskroom/miniconda/base/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/usr/local/Caskroom/miniconda/base/bin" $PATH
    end
end
