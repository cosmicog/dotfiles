# remember: serveo.net
#           ncdu

#{{{ Plugins & Zgen
    source "${HOME}/.zgen/zgen.zsh"

    if ! zgen saved
    then
        echo "Creating a zgen save"

        zgen load zsh-users/zsh-syntax-highlighting
        zgen load zsh-users/zsh-history-substring-search
        zgen load zsh-users/zsh-autosuggestions
        zgen load rust-lang/zsh-config

        zgen save
    fi

    # NativeScript
    if [ -f /home/alx/.tnsrc ]; then
        source /home/alx/.tnsrc
    fi
#}}}

#{{{ ZSH Modules
    autoload -Uz compinit
    autoload -U promptinit zcalc
    autoload -U colors && colors
    autoload -Uz vcs_info
    if [[ -n ${ZDOTDIR}/.zcompdump(#qN.mh+24) ]];
    then
        compinit;
    else
        compinit -C;
    fi;
#}}}

#{{{ Options
    setopt auto_cd
    setopt auto_pushd
    setopt pushd_ignore_dups
    setopt glob_complete
    setopt rm_star_wait
    setopt zle
    setopt vi
    setopt no_hup
    setopt no_check_jobs
    setopt ignore_eof
    setopt no_beep
    setopt numeric_glob_sort
    setopt extended_glob
    setopt rc_expand_param
    setopt append_history
    setopt complete_in_word
    setopt prompt_subst
    setopt nohashdirs
    setopt nohashcmds
    unsetopt flow_control
    unsetopt list_ambiguous

    # history options
    setopt extended_history
    setopt share_history
    setopt hist_ignore_dups
    setopt hist_ignore_all_dups
    setopt hist_expire_dups_first
    setopt hist_find_no_dups
    setopt hist_save_no_dups
    setopt hist_reduce_blanks
    setopt hist_ignore_space
    setopt hist_no_store
    setopt hist_verify
    setopt hist_ignore_space
#}}}

#{{{ Variables
    export HADES="hades.alx.mooo.com"
    export SCRIPTS="~/.scripts"
    export EDITOR=vim
    export PAGER=less
    export KEYTIMEOUT=1  # Reduce vi-mode lag

    # Android
    export ANDROID_HOME="/opt/android-sdk/"
    export ANDROID_TOOLS="$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools"

    # Java
    export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=gasp'
    export _JAVA_AWT_WM_NONREPARENTING=1
    export JAVA_FONTS=/usr/share/fonts/TTF
    export JAVA_HOME="/usr/lib/jvm/java-8-openjdk"
    export JENA="/mnt/hdd/alx/u/web_semantica/apache-jena-3.6.0/bin"

    # Gradle
    export GRADLE_HOME="/opt/gradle-2.9"

    # Composer
    export COMPOSER_HOME=~/.composer/

    # Perl
    export PERL_SITE="/usr/bin/site_perl/"
    export PERL_VENDOR="/usr/bin/vendor_perl/"
    export PERL_CORE="/usr/bin/core_perl/"

    # Python
    export PYTHONPATH=/usr/share/qgis/python

    # Ruby
    export GEM_HOME=$HOME/.gem/ruby/2.4.0/gems/
    export BUNDLE_PATH=$HOME/.gem/ruby/2.4.0/gems/

    # Rust
    export RUST_CARGO_BIN="$HOME/.cargo/bin"
    export RUST_SRC_PATH=~/lab/rust/rust/src/

    # Haskell
    export HASKELL_STACK_BIN="$HOME/.stack/programs/x86_64-linux/"

    # NPM
    export NPM_PACKAGES="$HOME/.npm-packages"
    export NPM_BIN="$HOME/.npm-packages/bin"

    # Gem
    export GEM_BIN="$HOME/.gem/ruby/2.5.0/bin"

    # Codebot
    export CODEBOT_LANGPATH="$HOME/lab/codebot/langs/"

    # Flutter
    export FLUTTER="/opt/flutter/bin/"

    # GPG
    GPG_TTY=$(tty)
    export GPG_TTY

    # Factorio
    export FACTORIO_BIN="/home/alx/factorio/bin/x64/"

    # Path
    PATH="/usr/bin:/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:"
    PATH+="/usr/games/bin:"
    PATH+="$HOME/.local/bin:"
    PATH+="$HOME/.scripts:"
    PATH+="$ANDROID_TOOLS:"
    PATH+="$GRADLE_HOME/bin:"
    PATH+="$COMPOSER_HOME/vendor/bin:"
    PATH+="$PERL_SITE:$PERL_VENDOR:$PERL_CORE:"
    PATH+="$RUBY_GEMS:"
    PATH+="$PERL6:"
    PATH+="$RUST_CARGO_BIN:"
    PATH+="$HASKELL_STACK_BIN:"
    PATH+="$NPM_BIN:"
    PATH+="$GEM_BIN:"
    PATH+="$JENA:"
    PATH+="$FLUTTER:"
    PATH+="$FACTORIO_BIN:"

    # Others
    PATH+="/home/alx/lab/stage:"
    source $HOME/.ghcup/env

    export PATH
    declare -U path

    # History
    HISTFILE=~/.history
    SAVEHIST=1000
    HISTSIZE=1000

    SORT_COMMAND="sort"
#}}}

#{{{ Aliases
    alias am="alsamixer" alsamixer='alsamixer -g -c 0'
    alias artisan="php artisan"
    alias cdmem="cd /mnt/mem"
    alias cdmeme=cdmem
    alias clip="xclip -selection clipboard -i"
    alias df="df -h"
    alias dhcp="sudo dhclient enp3s0"
    alias dl="darcs log"
    alias dog="less -RSFXin"
    alias dotpng="dot -Tpng -O"
    alias dr="darcs record"
    alias du="du -h"
    alias dud="du -h -d 0"
    alias dw="darcs whatsnew"
    alias e=vim
    alias edit=vim
    alias er=vr
    alias ex="exit"
    alias exi="exit"
    alias ext="exit"
    alias exti="exit"
    alias free="free -h"
    alias ga="git add"
    alias gb="git branch"
    alias gc="git commit"
    alias gco="git checkout"
    alias git="hub"
    alias gl="git log --format=format:'%C(auto)%h %C(green)%aN%Creset %Cblue%cr%Creset %s'"
    alias grep="grep --line-number --ignore-case --color=auto"
    alias gs="git status -sb"
    alias ll="l | less -R"
    alias LL="L | less -R"
    alias lsl="command ls -lLh --color"
    alias lsls="command ls -lLha --color"
    alias lg="la"
    alias m="mpv"
    alias mail="mutt"
    alias meme=mem
    alias mkdir="mkdir -p"
    alias moretmp="sudo mount -o remount,size=10G,noatime /tmp"
    alias ns="nativescript"
    alias o="$SCRIPTS/open.sh"
    alias p="ping 8.8.8.8"
    alias pastebin="nc termbin.com 9999" # Reminder: text snippet sharing
    alias termbin="nc termbin.com 9999"
    alias sprunge="nc termbin.com 9999"
    alias pb="nc termbin.com 9999"
    alias qgis="qgis --nologo"
    alias s="sxiv -a -q&"
    alias S="sxiv -a -q ./*&"
    alias ser="sudo service"
    alias suod="sudo"
    alias sys="sudo systemctl"
    alias time="command time -p"
    alias tte="trans -b -t en"
    alias tts="trans -b -t es"
    alias vhex="vim -b"
    alias vi=vim
    alias vim="fuzzy_edit"
    alias vr="fuzzy_edit readme"
    alias re="vim report.md"
    alias ro="zathura report.pdf&"
    alias se="stack exec"
    alias sb="stack build"
    alias cb="cabal v2-build"
    alias cr="cabal v2-repl"
    alias stage="stage.sh"
    alias st="stage"
    alias ink="inkscape"
    alias inks="inkscape"
    alias r="R --quiet"
    alias R="R --quiet"
    alias bat="command bat --theme GitHub"
    alias vnmap="nmap -sV --script=vulscan/vulscan.nse"
    alias octave="octave -q"
    alias gro="git remote rm origin"
    alias gao="git remote add origin "
    alias prog="progress"
    alias ch="cht.sh "
    alias gdb="gdb -q "
    alias winbox="wine ~/lab/winbox.exe&"
    alias svgo="svgo --config='{ \"plugins\": [{ \"removeViewBox\": false }, { \"removeDimensions\": true }] }'"
    alias yesod="stack exec -- yesod"
    alias hakyll="stack exec site"
    alias shake="stack -- exec shake"

    #{{{ Functions
        function md() { pandoc -s -f markdown -t man "$1" | command man -l - }
        function h() { command hoogle $@ | HsColour --tty }
        function hi() { command hoogle --info $@ | HsColour --tty }
        function gd() { git diff --color "$@" | diff-so-fancy | less -RSFXi }

        function c()
        {
            if [[ $# -eq 1 ]];
            then
                cd "$@" &> /dev/null && l
                if [[ $? -ne 0 ]];
                then
                    cd_fzf "$@";
                fi

            elif [[ $# -eq 0 ]];
            then
                cd ~ && clear
            fi
        }

        function L()
        {
            SORT_COMMAND="sort -r"
            l
        }

        function l()
        {
            if [[ $# -eq 0 ]];
            then
                l_dir="."
            else
                if [[ -d "$1" ]];
                then
                    l_dir="$1"
                else
                    l_dir=$(find -L . -maxdepth 1 -type d -not -path '*/\.*' \
                        -printf "%P\n" | fzf -q "$1" -1 -0)

                    if [[ "$l_dir" == "" ]]
                    then
                        echo
                        echo -e "\t No such directory \"$1\"    ¯\_(ツ)_/¯"
                        echo
                        return 1
                    fi
                fi
            fi

            list_dir $l_dir
        }

        function la()
        {
            l | ag $@
        }

        function woman()
        {
            command man -P true "$*" &> /dev/null
            if [[ $? -eq 0 ]];
            then
                command vim -c ":Man $*" -c ":tabonly" -c ":bd 1"
            else
                echo
                echo
                echo -e "\t No such man page \"$*\"    ¯\_(ツ)_/¯"
                echo
            fi
        }

        function back_dir()
        {
            if [[ "$#" == 0 ]]; then
                c ../
            else
                for i in {1..$1}
                do
                    c ../
                done
            fi
        }
    #}}}

    #{{{ Scripts
        alias alan="$SCRIPTS/alan.sh"
        alias be="$SCRIPTS/builder_edit.sh"
        alias eT="$SCRIPTS/network/et_phone_home.sh"
        alias eje="$SCRIPTS/mem.sh eject"
        alias es="$SCRIPTS/edit_shot.sh"
        alias gclone="$SCRIPTS/git.sh clone"
        alias getit="$SCRIPTS/pacman.sh getit"
        alias gpull="$SCRIPTS/git.sh pull"
        alias gpush="$SCRIPTS/git.sh push"
        alias gupstream="$SCRIPTS/git.sh add_upstream"
        alias home="$SCRIPTS/home.sh"
        alias html2hamlet="$SCRIPTS/html2hamlet.sh"
        alias labip="$SCRIPTS/network/echo_lab_ip.sh"
        alias mem="$SCRIPTS/mem.sh mount"
        alias yay="$SCRIPTS/pacman.sh yay $*"
        alias pacman="$SCRIPTS/pacman.sh pacman $*"
        alias poweroff="$SCRIPTS/build/Topa halt"
        alias pro="$SCRIPTS/projector.sh"
        alias psci="$SCRIPTS/pulp.sh psci"
        alias pubip="$SCRIPTS/network/echo_pub_ip.sh"
        alias pulp="$SCRIPTS/pulp.sh"
        alias reboot="$SCRIPTS/build/Topa reboot"
        alias rn="$SCRIPTS/generate_report.sh"
        alias rr="$SCRIPTS/ratpoison/restore_ratpoison.sh"
        alias replicate="$SCRIPTS/replicate_term.sh&"
        alias silly="$HOME/lab/sillybytes/sillybytes_tool/silly.sh"
        alias topa="$SCRIPTS/build/Topa halt"
        alias update="$SCRIPTS/update.sh"
        alias wgetit="$SCRIPTS/wgetit.sh"
        alias wifi="$SCRIPTS/network/wifi.sh"
        alias ymd="$SCRIPTS/youtube_music_download.sh"
        alias yt="$SCRIPTS/youtube_mplayer.sh"
    #}}}

    #{{{ Sufix
        alias -s md=md
        alias -s c=vim
        alias -s cpp=vim
        alias -s h=vim
        alias -s hpp=vim
        alias -s java=vim
        alias -s php=vim
        alias -s html=vim
        alias -s css=vim
        alias -s js=vim
        alias -s rs=vim
        alias -s pdf=zathura
        alias -s jpg=sxiv
        alias -s jpeg=sxiv
        alias -s gif=sxiv
        alias -s png=sxiv
    #}}}

    #{{{ Edit Dotfiles
        alias '\ev'="$EDITOR ~/.vimrc"
        alias '\et'="$EDITOR ~/.tmux.conf"
        alias '\er'="$EDITOR ~/.ratpoisonrc"
        alias '\ez'="$EDITOR ~/.zshrc"
        alias '\ef'="$EDITOR ~/.config/fish/config.fish"
        alias '\ex'="$EDITOR ~/.xinitrc"
    #}}}

    #{{{ Fast directory access
        alias cd='c'
        alias ,,='popd'
        alias ..='back_dir $@'
        alias ...='back_dir 2'
        alias ....='back_dir 3'
        alias .....='back_dir 4'
        alias dot="cd ~/dotfiles/"
    #}}}
#}}}

#{{{ Completion
    zstyle ':completion::complete:*' use-cache 1
    zstyle ':completion:*' accept-exact '*(N)'
    zstyle ':completion:*' rehash true
    zstyle ':completion:*' use-cache on
    zstyle ':completion:*' cache-path ~/.zsh/cache
    zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
    zstyle ':completion:*' verbose yes
    zstyle ':completion:*:descriptions' format '%B%d%b'
    zstyle ':completion:*:messages' format '%d'
    zstyle ':completion:*' group-name ''
    zstyle ':completion:*' auto-description 'specify: %d'
    zstyle ':completion:*:default' list-prompt '%S%M matches%s'
    zstyle ':completion:*:default' menu 'select=0'
    zstyle ':completion:*' file-sort modification reverse
    zstyle ':completion:*' list-colors "=(#b) #([0-9]#)*=36=31"
    zstyle ':completion:*:manuals' separate-sections true
    zstyle ':completion:*:corrections' format '%B%d (errors %e)%b'
    zstyle ':completion::*:(rm|vi):*' ignore-line true
    zstyle ':completion:*' ignore-parents parent pwd
    zstyle ':completion::approximate*:*' prefix-needed false

    #{{{ Ignore
        zstyle ':completion:*:(all-|)files' ignored-patterns "(*.pyc|*~|*.o|*.class)"
        zstyle ':completion:*:ls:*:(all-|)files' ignored-patterns
        zstyle ':completion:*:rm:*:(all-|)files' ignored-patterns
    #}}}
#}}}

#{{{ Key bindings
    # Special keys works properly
    bindkey '\e[1~' beginning-of-line
    bindkey '\e[4~' end-of-line
    bindkey '\e[A' up-line-or-history
    bindkey '\e[B' down-line-or-history
    bindkey '\eOA' up-line-or-history
    bindkey '\eOB' down-line-or-history
    bindkey '\e[C' forward-char
    bindkey '\e[D' backward-char
    bindkey '\eOC' forward-char
    bindkey '\eOD' backward-char

    bindkey '^O' clear-screen
    bindkey -s '^Y' 'back_dir\n'
    autoload -z edit-command-line
    zle -N edit-command-line
    bindkey '^E' edit-command-line
    # bindkey -M viins '^E' insert-last-word
#}}}

#{{{ Prompt
    zstyle ':vcs_info:*' stagedstr '%F{28}•'
    zstyle ':vcs_info:*' unstagedstr '%F{11}•'
    zstyle ':vcs_info:*' check-for-changes true
    zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{11}%r'
    zstyle ':vcs_info:*' enable git svn

    precmd()
    {
        git_repo_name=$(git rev-parse --show-toplevel 2> /dev/null)
        git_repo_name=${git_repo_name##*/}
        if [[ -z $(git ls-files --other --exclude-standard 2> /dev/null) ]] {
            zstyle ':vcs_info:*' formats " %F{normal}[%F{magenta}$git_repo_name%F{normal}|%F{green}%b%c%u%F{normal}]"
        } else {
            zstyle ':vcs_info:*' formats " %F{normal}[%F{magenta}$git_repo_name%F{normal}|%F{green}%b %c%u%F{red}•%F{normal}]"
        }

        vcs_info
    }

    custom_prompt=$'\n''%{$fg[blue]%} %2~$reset_color${vcs_info_msg_0_}'
    custom_prompt+="%{$reset_color%}%{$fg_bold[magenta]%} "
    custom_prompt+="( ͡° ͜ʖ ͡°)%{$reset_color%}"

    PS1=$custom_prompt
    PS2="%{$fg[blue]%} | go on %{$fg[magenta]%}(>'_')>%{$reset_color%}  "
#}}}

#{{{ Vi-mode
    # From 'oh-my-zsh' vi-mode plugin

    # Ensures that $terminfo values are valid and updates editor information
    # when the keymap changes.
    function zle-keymap-select zle-line-init zle-line-finish {
      # The terminal must be in application mode when ZLE is active for
      # $terminfo values to be valid.
      if (( ${+terminfo[smkx]} )); then
        printf '%s' ${terminfo[smkx]}
      fi
      if (( ${+terminfo[rmkx]} )); then
        printf '%s' ${terminfo[rmkx]}
      fi

      zle reset-prompt
      zle -R
    }

    # Ensure that the prompt is redrawn when the terminal size changes.
    TRAPWINCH() {
      if [[ -o zle ]]; then
        zle reset-prompt
        zle -R
      fi
    }

    zle -N zle-line-init
    zle -N zle-line-finish
    zle -N zle-keymap-select
    zle -N edit-command-line


    bindkey -v

    # Avoid dropping keystrokes after ESC hit
    bindkey -as '\e' ''

    # allow ctrl-p, ctrl-n, ctrl-r for navigate history (standard behaviour)
    bindkey '^P' up-history
    bindkey '^N' down-history
    bindkey '^r' history-incremental-search-backward

    # Incremental search for / and ?
    bindkey -M vicmd "/" history-incremental-search-backward
    bindkey -M vicmd "?" history-incremental-search-forward

    # allow ctrl-h, ctrl-w, ctrl-? for char and word deletion
    # (standard behaviour)
    bindkey '^?' backward-delete-char
    bindkey '^h' backward-delete-char
    bindkey '^w' vi-backward-kill-word

    # Some extra vim like bindings
    bindkey -a 'gg' beginning-of-buffer-or-history
    bindkey -a 'G' end-of-buffer-or-history
    bindkey -a 'u' undo
    bindkey -a '^R' redo

    # Mode indicator right prompt
    function zle-line-init zle-keymap-select
    {
        if [[ "$KEYMAP" == "vicmd" ]];
        then
            PS1="$custom_prompt %{$fg[red]%}> "
        else
            PS1="$custom_prompt   "
        fi

        zle reset-prompt
    }

    # Allow Copy/Paste with the system clipboard
    # behave as expected with vim commands ( y/p/d/c/s )
    [[ -n $DISPLAY ]] && (( $+commands[xclip] )) && {

    function cut_buffer()
    {
        zle .$WIDGET
        echo $CUTBUFFER | xclip -selection clipboard
    }

    zle -N vi-yank cut_buffer
    zle -N vi-yank-eol cut_buffer

    function put_buffer()
    {
        zle copy-region-as-kill "$(xclip -selection clipboard -o |
        sed "s/^/ /")"
        zle .$WIDGET
    }

    function put_quoted_buffer()
    {
        zle copy-region-as-kill "$(xclip -selection clipboard -o |
        sed "s/^/ '/;s/$/'/")"
        zle .$WIDGET
    }

    zle -N vi-put-after put_buffer
    zle -N vi-put-before put_quoted_buffer
    }
#}}}

#{{{ Misc
    # Deactivate Software flow control
    stty -ixon

    # Set proper terminal for SCREEN and TMUX
    if [[ -z $TMUX ]]; then
        if [ -e /usr/share/terminfo/x/xterm+256color ]; then
            export TERM='xterm-256color'
        else
            export TERM='xterm'
        fi
    else
        if [ -e /usr/share/terminfo/s/screen-256color ]; then
            export TERM='screen-256color'
        else
            export TERM='screen'
        fi
    fi

    # Take me home to the place I belong, take me home, country roads...
    if [[ `pwd` == "/" ]]
    then
        cd ~
    fi
#}}}

#{{{ Global Functions
    function command_not_found_handler()
    {
        cat ~/.ascii_art/doge
    }

    function list_dir()
    {
        echo
        find "$1/" -maxdepth 1 -not -path '*/\.*' -printf \
            "[%y]%P\n" | tail -n +2 | eval ${SORT_COMMAND} \
            | sed -r \
            "s/\[[d]\](.*)/$(printf ' \033[1m')\1$(printf '\033[0m')/"\
            | sed -r \
            "s/\[[f]\](.*)/ \1/"\
            | sed -r \
            "s/\[[l]\](.*)/ \1$(printf '\033[38;5;14m@\033[0m')/"
        SORT_COMMAND="sort"
    }

    function fuzzy_edit()
    {
        file=""
        if [[ "$#" -gt 1 ]];
        then
            $EDITOR $*
            return 0
        elif [[ "$#" -eq 0 ]];
        then
            $EDITOR
            return 0
        elif [[ -f "$1" ]];
        then
            file="$1"
        else
            file=$(find . -maxdepth 1 -type f -not -path '*/\.*' -printf "%P\n"\
                | command grep -i -v -e '\.hi' -e '\.o' -e '\.elf' -e '\.hex' \
                    -e '\.pdf' -e '\.png' -e '\.jpg'  -e '\.d' \
                | fzf -q "$1" -1 -0)
        fi

        if [[ "$file" != "" ]];
        then
            if [[ -w "$file" ]];
            then
                $EDITOR "$file"
            else
                clear
                echo
                cat ~/.ascii_art/skull
                echo
                echo "\tTo root or not to root that is the question...  "
                echo
                read option

                if [[ "$option" == "y" ]];
                then
                    sudo -e "$file"
                else
                    $EDITOR "$file"
                fi
                clear
            fi
        else
            $EDITOR "$1"
        fi
    }

    #{{{ FZF
        function cd_fzf()
        {
            go_dir=$(find -L . -maxdepth 1 -type d -not -path '*/\.*' \
                -printf "%P\n" | fzf -q "$*" -1 -0)

            if [[ "$go_dir" != "" ]]
            then
                cd "./$go_dir"
            else
                cd_fasd "$@";
            fi
        }

        function fe()
        {
            files=($(find -L -type f | fzf --query="$1" --select-1 --exit-0))
            if [[ -n "$files" ]];
            then
                $EDITOR "$files"
            fi
        }
    #}}}

    #{{{ FASD
        eval "$(fasd --init posix-alias zsh-hook)"

        function cd_fasd()
        {
            go_dir=`fasd -d "$*"`

            if [[ "$go_dir" == "" ]]
            then
                echo
                echo -e "\t No directory \"$*\"    ¯\_(ツ)_/¯"
                echo
            else
                echo
                cat ~/.ascii_art/spacecraft
                echo
                cd "$go_dir"
            fi
        }
    #}}}
#}}}

#{{{ Plugins configuration
    #{{{ history-substring-search
        bindkey -M vicmd 'k' history-substring-search-up
        bindkey -M vicmd 'j' history-substring-search-down
    #}}}

    #{{{ FZF
        [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
        bindkey '^D' fzf-cd-widget
        bindkey '^F' fzf-file-widget

        export FZF_TMUX=1
        export FZF_TMUX_HEIGHT=20%
        export FZF_DEFAULT_COMMAND='ag --depth 10 -f -g "" --hidden \
            --ignore ".git" --ignore "_darcs" --ignore "*.o" --ignore "*.hi" \
            --ignore ".stack-work" --ignore "node_modules" --ignore ".shake" \
            --ignore "bower_components" --ignore "bower"'
        export FZF_DEFAULT_OPTS='
            --color fg:240,bg:-1,hl:33,fg+:241,bg+:223,hl+:33
            --color info:33,prompt:33,pointer:166,marker:166,spinner:33'
        export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -200'"

        TRAPWINCH()
        {
            zle && { zle reset-prompt; zle -R }
        }
    #}}}

    #{{{ Autosuggestions
        bindkey '^ ' autosuggest-accept
        export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=14'
    #}}}
#}}}

#{{{ First Init
    # Auto start X11
    if [[ ! (-e /tmp/.X0-lock) ]]; then
        startx
    fi
#}}}


# vim:fdm=marker
