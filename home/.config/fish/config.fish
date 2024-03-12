#!/usr/bin/env fish
#################################### Setting variables ########################################
# Delete all previous paths in current fish terminal session
set --erase fish_user_paths

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
# Adding to PATH env var
fish_add_path $HOME/.local/bin


################################## Additional Programs ##############################################
## Homebrew
set -gx HOMEBREW_NO_ENV_HINTS 1
# Homebrew paths
fish_add_path $brew_prefix/bin
fish_add_path $brew_prefix/sbin

## Update macOS default utilities
## GNU utils
# fish_add_path $brew_prefix/opt/coreutils/libexec/gnubin #GNU coreutils (cd, env, ls, test, type, etc.)
# fish_add_path $brew_prefix/opt/findutils/libexec/gnubin #GNU findutils(find, xargs, locate)
# fish_add_path $brew_prefix/opt/binutils/bin #GNU binutils(ar, elfedit, sysdump, size, etc.)
# fish_add_path $brew_prefix/opt/gnu-sed/libexec/gnubin #GNU sed
# fish_add_path $brew_prefix/opt/ed/bin; #GNU ed(ed & red)
alias ed 'ged -v -p ":"';
# fish_add_path $brew_prefix/opt/grep/libexec/gnubin #GNU grep(grep, egrep, fgrep)
# fish_add_path $brew_prefix/opt/gnu-which/libexec/gnubin #GNU which
fish_add_path $brew_prefix/opt/gnu-indent/libexec/gnubin #GNU indent
fish_add_path $brew_prefix/opt/gnu-tar/libexec/gnubin #GNU tar
fish_add_path $brew_prefix/opt/gawk/libexec/gnubin #GNU awk
fish_add_path $brew_prefix/opt/make/libexec/gnubin #GNU make
fish_add_path $brew_prefix/opt/gcc/bin #GNU compiler collection
fish_add_path $brew_prefix/opt/m4/bin #GNU m4
fish_add_path $brew_prefix/opt/curl/bin #GNU curl
fish_add_path $brew_prefix/opt/bc/bin #GNU bc
# Other utils
fish_add_path $brew_prefix/opt/zip/bin #Info-Zip zip

## Ruby
fish_add_path $brew_prefix/opt/ruby/bin

## Java
fish_add_path $brew_prefix/opt/openjdk/bin

## Postgresql
fish_add_path $brew_prefix/opt/postgresql@14/bin

## Rust
fish_add_path $HOME/.cargo/bin

if status --is-interactive
    ####################################   Config when fish is interactive ###############################################3
    fish_add_path $HOME/.config/emacs/bin # Doom Emacs
    # fish_add_path /System/Library/PrivateFrameworks/Apple80211.framework/Resources #Airport Utility

    ## Ruby
    # rbenv
    rbenv init - fish | source

    ## Python
    # pip
    alias pip-uninstall-all 'pip freeze | cut -d "@" -f1 | xargs pip uninstall -y'
    # pyenv
    set -gx PYENV_ROOT $HOME/.pyenv
    fish_add_path $PYENV_ROOT/bin
    pyenv init - | source
    pyenv virtualenv-init - | source


    # fifc plugin environment variables
    set -gx fifc_editor nvim
    set -gx fifc_fd_opts --hidden
    set -gx fifc_bat_opts --style=numbers
    set -gx fifc_exa_opts --all --classify --icons --oneline --group-directories-first --group

    # PatrickF1/fzf.fish plugin environment variables
    set -gx fzf_fd_opts --hidden
    set -gx fzf_preview_dir_cmd eza --all --color=always --icons=always --classify --group-directories-first --group --hyperlink --color-scale --color-scale-mode=gradient
    # GNU Screen config env var
    set -gx SCREENRC $HOME/.config/screen/screenrc

    ############################################ Aliases #################################################
    alias showpath 'echo $PATH | sed "s/ /\n/g"'
    alias showid "id | sed 's/ /\n/g' | sed 's/,/\n/g'"

    # Mapping "ls" to "eza"
    set -l eza_params "--all" "--classify" "--icons=always" "--group-directories-first" "--color=always" "--color-scale" "--color-scale-mode=gradient" "--hyperlink"
    alias ll "eza -lbhHigUmuSa@ $eza_params"
    alias lt "eza -T --level=2 $eza_params" # tree listing with depth 2
    alias ls "eza $eza_params"

    # Other similar mappings
    alias man 'batman'
    alias cat 'bat'
    alias ff 'fastfetch --logo-type iterm --logo $HOME/Sync-macOS/assets/a-12.png --pipe false --structure Title:OS:Kernel:Uptime:Display:Terminal:CPU:CPUUsage:GPU:Memory:Swap:LocalIP --gpu-temp true --cpu-temp true --title-color-user magenta --title-color-at blue --cpu-format "{1} @ {#4;35}{8}°C{#}" --gpu-format "{2} @ {#4;35}{4}°C{#}"'

    # Directory shortcuts for macOS
    alias dt "cd $HOME/Desktop/"
    alias dl "cd $HOME/Downloads/"

    # Ultimate aliases
    alias apps-backup "env ls /Applications/ 1> $HOME/Sync-macOS/etc/ref-txts/apps_(date +%b%y).txt"
    alias gem-ultimate 'sudo gem update; sudo gem cleanup'
    alias pipx-ultimate 'pipx upgrade-all; pipx list --short 1> ~/Sync-macOS/etc/ref-txts/pipx_list.txt'
    alias brew-ultimate 'brew update; and brew upgrade; and brew autoremove; and brew cleanup -s --prune=0; and brew bundle dump --file=~/.Brewfile --force; and rm -rf (brew --cache)'
    alias mac-ultimate 'sudo -v; brew-ultimate; apps-backup'

    # Recursively delete `.DS_Store` files for macOS
    alias cleanup-DS "sudo find . -type f -name '*.DS_Store' -ls -delete"

    # Empty the Trash on all mounted volumes and the main drive & clear system logs for macOS
    alias empty-trash 'bass "sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl; sudo rm -rfv /private/tmp/*.log"'

    # Abbreviations
    abbr --position anywhere --add nv nvim
    abbr --position anywhere --add v vim
    abbr --position anywhere --add .2 'cd ../..'
    abbr --position anywhere --add .3 'cd ../../..'
    abbr --position command --add gits 'git status'
    abbr --position command --add gitph 'git push'
    abbr --position command --add gitpl 'git pull'
    abbr --position command --add gitf 'git fetch'
    abbr --position command --add gitc 'git commit'


    ####################################### Initializations ###############################################
    # Run Fastfetch - fetch system info
    if type -q fastfetch && test "$TERM_PROGRAM" = "WezTerm" && test "$TERM" = "xterm-256color"
        ff
    end

    # Starship - custom shell prompt
    if type -q starship
        starship init fish | source
    end

    # Zoxide utility - smarter cd
    if type -q zoxide
        zoxide init --cmd cd fish | source
    end

    # Atuin - magical shell history
    if type -q atuin
        atuin init fish | source
    end
end

