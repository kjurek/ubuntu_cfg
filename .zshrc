export ZSH="/home/$(whoami)/.oh-my-zsh"
ZSH_THEME="amuse"
plugins=(
  git
)
source $ZSH/oh-my-zsh.sh
alias genpwd="tr -cd '[:alnum:]' < /dev/urandom | fold -w30 | head -n1"
