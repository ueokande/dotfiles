#!/bin/bash

test -f ~/.bashrc && . ~/.bashrc

if [ ! -d /tmp/$USER ]; then
  mkdir /tmp/$USER
  chmod 700 /tmp/$USER
  mkdir /tmp/$USER/Downloads
fi

