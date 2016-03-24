# Gtk themes
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

alias ls='ls --color=auto'
export PS1='[\u@\h \w]\$ '

# Add pyenv to the path, and specify it's root
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

# Add MPC sock to MPD_HOST
export MPD_HOST="$HOME/.config/mpd/socket"

#[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
eval "$(pyenv init -)"

# Setup vim as my editor
export EDITOR=vim
alias svim=sudoedit
alias win32='WINEARCH=win32 WINEPREFIX=~/.wine wine'
alias win64='WINEARCH=win64 WINEPREFIX=~/.wine64 wine'

# Add custom scripts
PATH=$PATH:$HOME/projects/dotfiles/scripts

# Setup ibus as the IME
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

# Close steam window correctly
export STEAM_FRAME_FORCE_CLOSE=1

# Set imagemagic tempdir
export MAGICK_TMPDIR=/mnt/disk/tmp

# Set QEMU audio device
export QEMU_AUDIO_DRV=pa
# export QEMU_PA_SINK=alsa_output.usb-BurrBrown_from_Texas_Instruments_USB_AUDIO_DAC-00.analog-stereo.monitor

#Useful aliases
alias show-torrent="aria2c --no-conf -S"
# COUNT=1; for file in *.png; do printf -v i "%03g" ${COUNT}; mv $file ${i}.${file#*.}; ((COUNT++)); done
