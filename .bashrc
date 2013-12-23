alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias ll="ls --color=auto -lh"
alias la="ls --color=auto -alh"

alias mkd="mkdir -p"
alias cd..="cd .."
alias cd...="cd ../.."
alias cd....="cd ../../.."
alias cd.....="cd ../../../.."
alias 1="cd -"
alias 2="cd +2"
alias 3="cd +3"
alias 4="cd +4"
alias 5="cd +5"
alias 6="cd +6"
alias 7="cd +7"
alias 8="cd +8"
alias 9="cd +9"

alias md="mkdir -p"
alias rd="rmdir"
alias rr="rm -rf"
alias d="dirs -v"

commands() {
	command -v $1 >/dev/null 2>&1
}

commands vim && export EDITOR=vim || export EDITOR=vi
commands vimpager && {
	export PAGER="vimpager"
	alias less="vimpager"
	alias zless="vimpager"
} || export PAGER="less"
commands vimdiff && export DIFF_VIEWER=vimdiff
[[ -n $DISPLAY ]] && export BROWSER=dwb
[[ -n $TMUX ]] && export TERM=screen-256color

alias p="print -l"
alias l="${PAGER}"
alias c=cat
alias v=vim
alias s="sudo "
alias lm="mount | sed 's/ \(on\|type\) /;;/g' | column -t -s ';;'"
alias m="mount"
alias um="umount"

alias g="git"
alias gad="git add"
alias gap="git apply"
alias gba="git branch -a"
alias gbr="git branch"
alias gca="git commit -a"
alias gcl="git clone"
alias gcm="git commit"
alias gco="git checkout"
alias gdf="git diff"
alias gdfc="git diff --cached"
alias gdfo="git diff ORIG_HEAD.."
alias gdfs="git diff --submodule"
alias gdfu="git diff @{u}.."
alias gfe="git fetch"
alias ggr="git grep"
alias glo="git log"
alias glop="git log -p"
alias glou="git log @{u}.."
alias gloup="git log -p @{u}.."
alias gmr="git merge"
alias gpl="git pull"
alias gpla="git pull --all"
alias gplr="git pull -r"
alias gps="git push"
alias grb="git rebase"
alias grm="git rm"
alias grmc="git rm --cached"
alias grs="git reset"
alias grt="git remote"
alias gs="git status -sb -uno"
alias gsa="git status -sb"
alias gsm="git submodule"
alias gss="git status"
alias gst="git stash"

alias tlf="sudo tailf"
alias vis="sudo -E vim"
alias vdifs="sudo -E vimdiff"

alias cr="rsync -ahvP --"
alias xp="xsel -p"
alias xb="xsel -b"

export FULLNAME="Daniel Martí"
export EMAIL="mvdan@mvdan.cc"
export DEBFULLNAME="Daniel Martí"
export DEBEMAIL="mvdan@mvdan.cc"

