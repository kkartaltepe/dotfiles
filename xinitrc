#!/bin/bash
export DE=awesome
export EDITOR=vim
export TERMINAL=urxvt
export BROWSER=chromium

# Dbus fix
if [ -z "$DBUS_SESSION_BUS_ADDRESS" ]; then
    eval "$(dbus-launch --sh-syntax --exit-with-session)"
fi

/usr/bin/xdg-user-dirs-update

#set terminal colors isomg xrdb
[[ -f ~/.xresources ]] && xrdb -merge ~/.xresources

if [ $DE == openbox ]; then
    # configure obmenu user
    sed -i 's/live/'$(whoami)'/' ~/.config/obmenu-generator/schema.pl \
                                 ~/.config/obmenu-generator/config.pl  

    /usr/bin/openbox-session > ~/.openbox_startup.log 2>&1
elif [ $DE == awesome ]; then
    awesome
fi



