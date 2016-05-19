export FULLNAME="Daniel Martí"
export EMAIL="mvdan@mvdan.cc"

export GOPATH="$HOME/go"
export PATH="$HOME/.bin:$HOME/tip/bin:$GOPATH/bin:$PATH"

export PAGER=less LESS=-FXRi
export EDITOR=vim
export DIFF_VIEWER=vimdiff
export BROWSER=chromium

[[ -f ~/.bashrc ]] && . ~/.bashrc

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
