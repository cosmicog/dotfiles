#!/bin/sh

COMMON_DEPS="\
    arm-none-eabi-binutils \
    arm-none-eabi-gcc \
    arm-none-eabi-gdb \
    arm-none-eabi-newlib \
    aspell \
    astyle \
    avr-binutils \
    avr-gcc \
    avr-gdb \
    avr-libc \
    avrdude \
    bat \
    bind-tools \
    calc \
    ccze \
    ccze \
    cgdb \
    chromium \
    cloc \
    ctags \
    curl \
    diff-so-fancy \
    exa \
    expect \
    fasd \
    fd \
    figlet \
    firefox \
    fzf \
    ghc \
    gimp \
    git \
    gnupg \
    htop \
    hub \
    id3v2 \
    inkscape \
    isync \
    john \
    jshon \
    librecad \
    mpc \
    mplayer \
    mpv \
    mutt \
    ncmpcpp \
    newsboat \
    nitrogen \
    nmap \
    notmuch \
    npm \
    ntp \
    openbox \
    openvpn \
    picocom \
    pulseaudio \
    qemu \
    ratpoison \
    readline \
    rofi \
    rxvt-unicode \
    sassc \
    scrot \
    smartmontools \
    sox \
    sshpass \
    stlink \
    stow \
    sxiv \
    the_silver_searcher \
    tmux \
    transmission-gtk \
    tree \
    unclutter \
    unrar \
    unzip \
    vagrant \
    w3m \
    weechat \
    wget \
    wmname \
    wol \
    words \
    wpa_supplicant \
    xbindkeys \
    xcape \
    xclip \
    xdotool \
    xdotool \
    xf86-input-synaptics \
    zathura \
    zathura-djvu \
    zathura-pdf-mupdf \
    zip \
    zsh \
"

FREEBSD_DEPS="\
    dejavu \
    en-aspell \
    es-aspell \
    freefonts \
    hs-hasktags \
    hs-hlint \
    hs-hoogle \
    hs-pandoc \
    hs-shellcheck \
    hs-xmonad \
    hs-xmonad-contrib \
    musicpd \
    netcat \
    nethack36 \
    password-store \
    py36-speedtest-cli \
    roboto-fonts-ttf \
    rubygem-asciidoctor \
    rxvt-font-size \
    sourcecodepro-ttf \
    surf-browser \
    taskwarrior \
    terminus-ttf \
    urwfonts \
    wemux \
    wireshark \
    xorg \
    xorg-docs \
    xorg-drivers \
    xorg-fonts-truetype \
    youtube_dl \
"

ARCH_DEPS="\
    acpi \
    alsa-utils \
    asciidoctor \
    aspell-en \
    aspell-es \
    dhclient \
    dnsutils \
    docker \
    expac \
    firefox-developer-edition \
    grep \
    gvim \
    haskell-hscolour \
    hasktags \
    hdparm \
    hindent \
    hoogle \
    libre-office-fresh \
    libre-office-fresh-en \
    libre-office-fresh-es \
    libvir \
    lolcat \
    mpd \
    neovim \
    nethack \
    openbsd-netcat \
    pacman \
    pacman-contrib \
    pandoc \
    pass \
    prettier \
    pulseaudio-alsa \
    python2-lxml \
    python2-scour \
    qemu-arch-extra \
    qrencode \
    reflector \
    sed \
    shellcheck \
    speedtest-cli \
    surf \
    task \
    time \
    ttf-dejavu \
    ttf-roboto \
    vim-runtime \
    virtualbox \
    virtualbox-host-modules-arch \
    wireshark-gtk \
    xmonad \
    xorg-xinit \
    xorg-xinput \
    xorg-xrandr \
    xorg-xsetroot \
    youtube-dl \
"

AUR_DEPS="\
    acpilight \
    cropgui \
    mimi-git \
    popcorntime-bin \
    python-proselint \
    svgo \
    tealdeer-git \
    translate-shell \
    twa \
    urxvt-resize-font-git \
    wemux \
"

HASKELL_DEPS="\
    stylish-haskell \
"

eval "pkg install $COMMON_DEPS $FREEBSD_DEPS"
# eval "cabal install $HASKELL_DEPS"
#eval "sudo pacman -Syy $COMMON_DEPS $ARCH_DEPS"
#eval "sudo yay -Syy $AUR_DEPS"
