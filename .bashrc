#!/bin/bash

if [[ $(who am i) =~ \([-a-zA-Z0-9\.]+\)$ ]]; then
  if [[ $UID = 0 ]]; then
    export PS1=$'\[\e[36;1m\]\h\[\e[m\]:\[\e[33;1m\]\w\[\e[31;1m\]#\[\e[m\] '
  else
    export PS1=$'\[\e[36;1m\]\h\[\e[m\]:\[\e[33;1m\]\w\[\e[39;1m\]>\[\e[m\] '
  fi
else
  if [[ $UID = 0 ]]; then
    export PS1=$'\[\e[33;1m\]\w\[\e[31;1m\]#\[\e[m\] '
  else
    export PS1=$'\[\e[33;1m\]\w\[\e[39;1m\]>\[\e[m\] '
  fi
fi


export PATH=$PATH:$HOME/bin
export LS_COLORS='no=00:fi=00:di=01;34:ln=00;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=41;33;01:ex=00;32:*.cmd=00;32:*.exe=01;32:*.com=01;32:*.bat=01;32:*.btm=01;32:*.dll=01;32:*.tar=00;31:*.tbz=00;31:*.tgz=00;31:*.rpm=00;31:*.deb=00;31:*.arj=00;31:*.taz=00;31:*.lzh=00;31:*.lzma=00;31:*.zip=00;31:*.zoo=00;31:*.z=00;31:*.Z=00;31:*.gz=00;31:*.bz2=00;31:*.tb2=00;31:*.tz2=00;31:*.tbz2=00;31:*.xz=00;31:*.avi=01;35:*.bmp=01;35:*.fli=01;35:*.gif=01;35:*.jpg=01;35:*.jpeg=01;35:*.mng=01;35:*.mov=01;35:*.mpg=01;35:*.pcx=01;35:*.pbm=01;35:*.pgm=01;35:*.png=01;35:*.ppm=01;35:*.tga=01;35:*.tif=01;35:*.xbm=01;35:*.xpm=01;35:*.dl=01;35:*.gl=01;35:*.wmv=01;35:*.aiff=00;32:*.au=00;32:*.mid=00;32:*.mp3=00;32:*.ogg=00;32:*.voc=00;32:*.wav=00;32:'
export LS_OPTIONS='-N --color=tty -T 0'

# aliases
alias -- +='pushd .'
alias -- -='popd'
alias ..='cd ..'
alias ...='cd ../..'
alias beep='echo -en "\007"'
alias beep='echo -en "\x07"'
alias cd..='cd ..'
alias dir='ls -l'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias l='ls -alF'
alias ls='ls $LS_OPTIONS'
alias la='ls -la'
alias ll='ls -l'
alias ls-l='ls -l'
alias md='mkdir -p'
alias rd='rmdir'
alias o='less'
alias timidity='timidity -Oe'
alias unmount='echo "Error: Try the command: umount" 1>&2; false'
alias vi='vim'
alias mk='make -j'
alias cds='cd $(git rev-parse --show-toplevel)'

# Homebrew in home directory
if [ -d $HOME/homebrew ]; then
  export PATH=${HOME}/homebrew/bin:$PATH
  export DYLD_LIBRARY_PATH=${HOME}/homebrew/lib:$DYLD_LIBRARY_PATH
fi

# Python libraries
if [ -d $HOME/py-lib ]; then
  export PYTHONPATH=$HOME/py-lib:$PYTHONPATH
fi

# rby
if [[ -s "$HOME/.rvm/scripts/rvm" ]]; then
  source "$HOME/.rvm/scripts/rvm"
  export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
fi

# nodebrew
if [ -d $HOME/.nodebrew/current/bin ]; then
  export PATH=$HOME/.nodebrew/current/bin:$PATH
fi

# nodebrew
if [ -d $HOME/.go ]; then
  export GOPATH=$HOME/.go
fi

# EDITOR
if (hash vim 2>/dev/null) then
  export EDITOR=vim
  export VISUAL=vim
elif (hash vi 2>/dev/null) then
  export EDITOR=vi
  export VISUAL=vi
fi

# PAGER
if (hash less >/dev/null 2>/dev/null) then
  export PAGER=less
elif (hash more >/dev/null 2>/dev/null) then
  export PAGER=more
fi

# Setup cmdo
if [ -d "$HOME/.cmdo/bin" ]; then
  export CMDO_HOME="$HOME/.cmdo"
  export PATH="$HOME/.cmdo/bin:$PATH"
fi
