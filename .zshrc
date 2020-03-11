export ZSH="/home/$(whoami)/.oh-my-zsh"
ZSH_THEME="amuse"
plugins=(
  git
)
source $ZSH/oh-my-zsh.sh
alias genpwd="tr -cd '[:alnum:]' < /dev/urandom | fold -w30 | head -n1"
alias dockerrmall='docker rm -fv $(docker ps -a -q)'
alias dockerkillall='docker kill $(docker ps -a -q)'
alias clipcopy='xclip -selection "clipboard"'
alias clippaste='xclip -o -selection "clipboard"'

function cr() {
    g++ "$@" && ./a.out
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
