#!/bin/sh

# Load xinitrc.d scripts
if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

test -f ~/.xprofile && . ~/.xprofile

exec /usr/bin/awesome
