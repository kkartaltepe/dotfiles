# Gtk themes 
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

alias ls='ls --color=auto'
export PS1='[\u@\h \w]\$ '

# Add pyenv to the path, and specify it's root
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

#[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
eval "$(pyenv init -)"

