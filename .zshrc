[[ $- = *i* ]] && source ~/.conf/zsh/liquidprompt/liquidprompt
source ~/.conf/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.conf/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
eval "$(dircolors)"
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
setopt autocd
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'
#set history size
export HISTSIZE=10000
#save history after logout
export SAVEHIST=10000
#history file
export HISTFILE=~/.zhistory
#append into history file
setopt INC_APPEND_HISTORY
#save only one command if 2 common are same and consistent
setopt HIST_IGNORE_DUPS
#add timestamp for each entry
setopt EXTENDED_HISTORY   

export EDITOR=/usr/bin/nvim
export PATH=$PATH:~/scripts
export PATH=$PATH:~/stagit
export QT_QPA_PLATFORMTHEME=qt5ct
export PATH=$PATH:~/go/bin
export GOROOT=/usr/local/go
export GOPATH=~/go

pct(){
	http https://movies-v2.api-fetch.sh/$1/$2
}

alias r="ranger"
alias vim="nvim"
alias vconf="nvim ~/.config/nvim/init.vim"
alias zconf="nvim ~/.zshrc"
alias py="python3"
alias cvenv="python3 -m venv venv"
alias avenv="source venv/bin/activate"
alias xclip="xclip -selection c"
alias o="xdg-open"
alias httpy="python3 -m http.server"
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias ls='ls --color'
alias la="grc ls -la --color"
alias ll="grc ls -ll --color"
alias g='git'
alias ga='git add'
alias gaa='git add --all'
alias gcm='git commit -m'
alias gd='git diff'
alias gpu='git pull'
alias glog='git log --oneline --decorate --graph'
alias gp='git push'
alias gpd='git push prod'
alias gp!='git push --force'
alias gra='git remote add'
alias greset='git reset --hard origin/master'
alias grm='git rm'
alias gst='git status'
alias gout="git checkout"
alias gam="git commit --amend"
alias gsh="git stash"
alias gbr='xdg-open $(git remote get-url origin | sed -e "s/git\@/https:\/\//;s/:/\//2") &>/dev/null'

# color candy
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
if [[ "$TERM" != dumb ]] && (( $+commands[grc] )) ; then
  # Supported commands
  cmds=(
    cc \
    configure \
    cvs \
    df \
    diff \
    dig \
    gcc \
    gmake \
    ifconfig \
    last \
    ldap \
    make \
    mount \
    mtr \
    netstat \
    ping \
    ping6 \
    ps \
    traceroute \
    traceroute6 \
    wdiff \
    whois \
    iwconfig \
  );
  # Set alias for available commands.
  for cmd in $cmds ; do
    if (( $+commands[$cmd] )) ; then
      alias $cmd="grc --colour=auto $(whence $cmd)"
    fi
  done
  # Clean up variables
  unset cmds cmd
fi

