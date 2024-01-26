#!/usr/bin/env fish
####################### Adding to the PATH environment variable ###############################
# Delete all previous paths in current fish terminal session
set --erase fish_user_paths

#################################### Setting variables ########################################
## Fish variables
set -g fish_greeting ''
set -l brew_prefix '/usr/local'

if status --is-interactive
    # Emulates vim's cursor shape behavior
    set -g fish_vi_force_cursor 1
    # Set the normal and visual mode cursors to a block
    set -g fish_cursor_default block
    # Set the insert mode cursor to a line
    set -g fish_cursor_insert line
    # Set the replace mode cursor to an underscore
    set -g fish_cursor_replace_one underscore
    # The following variable can be used to configure cursor shape in
    # visual mode, but due to fish_cursor_default, is redundant here
    set -g fish_cursor_visual block
end

## Environment Variables
set -gx EDITOR 'nvim'
set -gx VISUAL 'nvim'
set -gx HOMEBREW_NO_ENV_HINTS 1

# Homebrew paths
fish_add_path $brew_prefix/bin
fish_add_path $brew_prefix/sbin

################################## Additional Programs ##############################################
## Update macOS default utilities
# GNU utils
fish_add_path $brew_prefix/opt/coreutils/libexec/gnubin #GNU coreutils (cd, env, ls, test, type, etc.)
fish_add_path $brew_prefix/opt/findutils/libexec/gnubin #GNU findutils(find, xargs, locate)
fish_add_path $brew_prefix/opt/binutils/bin #GNU binutils(ar, elfedit, sysdump, size, etc.)
fish_add_path $brew_prefix/opt/gnu-sed/libexec/gnubin #GNU sed
fish_add_path $brew_prefix/opt/ed/bin; alias ed 'ged'; alias red 'gred'; #GNU ed(ed & red)
fish_add_path $brew_prefix/opt/grep/libexec/gnubin #GNU grep(grep, egrep, fgrep)
fish_add_path $brew_prefix/opt/gnu-indent/libexec/gnubin #GNU indent
fish_add_path $brew_prefix/opt/gnu-which/libexec/gnubin #GNU which
fish_add_path $brew_prefix/opt/gnu-tar/libexec/gnubin #GNU tar
fish_add_path $brew_prefix/opt/gawk/libexec/gnubin #GNU awk
fish_add_path $brew_prefix/opt/make/libexec/gnubin #GNU make
fish_add_path $brew_prefix/opt/gcc/bin #GNU compiler collection
fish_add_path $brew_prefix/opt/m4/bin #GNU m4
fish_add_path $brew_prefix/opt/curl/bin #GNU curl
# Other utils
fish_add_path $brew_prefix/opt/zip/bin #Info-Zip zip
fish_add_path $brew_prefix/opt/flex/bin #westes/flex

## Ruby
fish_add_path $brew_prefix/opt/ruby/bin

## Java
fish_add_path $brew_prefix/opt/openjdk/bin

## Python
# conda initialize
eval /usr/local/Caskroom/miniconda/base/bin/conda "shell.fish" "hook" $argv | source

## Postgresql
fish_add_path $brew_prefix/opt/postgresql@14/bin

## Flutter
set -gx CHROME_EXECUTABLE '/Applications/Google Chrome Dev.app/Contents/MacOS/Google Chrome Dev'

if status --is-interactive
    fish_add_path ~/.config/emacs/bin #Doom Emacs
    fish_add_path /System/Library/PrivateFrameworks/Apple80211.framework/Resources #Airport Utility

    # fifc plugin environment variables
    set -gx fifc_editor nvim
    set -gx fifc_fd_opts --hidden
    set -gx fifc_bat_opts --style=numbers
    set -gx fifc_exa_opts --all --classify --icons --oneline --group-directories-first --group

    # PatrickF1/fzf.fish plugin environment variables
    set -gx fzf_fd_opts --hidden
    set -gx fzf_preview_dir_cmd eza --all --color=always --icons=always --classify --group-directories-first --group --hyperlink --color-scale --color-scale-mode=gradient

    # tuifi environment variables
    set -gx tuifi_show_hidden 'True'
    set -gx tuifi_vim_mode 'True'
    set -gx tuifi_default_editor 'nvim'
end


############################################ Aliases #################################################
if status --is-interactive
    # Mapping "ls" to "eza"
    set -l eza_params "--all" "--classify" "--icons=always" "--group-directories-first" "--color=always" "--color-scale" "--color-scale-mode=gradient" "--hyperlink"
    alias ll "eza -lbhHigUmuSa@ $eza_params"
    alias lt "eza -T --level=2 $eza_params" # tree listing with depth 2
    alias ls "eza $eza_params"

    # Directory shortcuts
    alias dt "cd $HOME/Desktop/"
    alias dl "cd $HOME/Downloads/"

    # Ultimate aliases
    alias apps-backup "env ls /Applications/ 1> $HOME/Sync-macOS/etc/ref-txts/apps_(date +%b%y).txt"
    alias gem-ultimate 'sudo gem update; sudo gem cleanup'
    alias brew-ultimate 'brew update; and brew upgrade; and brew autoremove; and brew cleanup -s --prune=0; and brew bundle dump --file=~/.Brewfile --force; and rm -rf (brew --cache)'
    alias mac-ultimate 'sudo -v; brew-ultimate; apps-backup; gem-ultimate; npm update -g'

    # Enable aliases to be sudo’ed
    alias sudo "sudo "

    # Recursively delete `.DS_Store` files
    alias cleanup-DS "sudo find . -type f -name '*.DS_Store' -ls -delete"

    # Empty the Trash on all mounted volumes and the main HDD.& clear Apple’s System Logs
    alias empty-trash "sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl; sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'"

    # Navigation
    alias .2 'cd ../..'
    alias .3 'cd ../../..'

    # Command-line utilities
    alias nv 'nvim'
end

####################################### Initializations ###############################################
if status --is-interactive
    # Run Fastfetch
    if type -q fastfetch && test "$TERM_PROGRAM" = "WezTerm"
        fastfetch
    end

    # Starship custom prompt
    if type -q starship
        starship init fish | source
    end

    # Zoxide utility
    if type -q zoxide
        zoxide init fish | source
    end
end

