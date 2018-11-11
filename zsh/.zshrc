export ZSH="$HOME/.oh-my-zsh"
export ZSH_THEME="agnoster"
export ZSH_CUSTOM=$HOME/.fx/zsh/custom
export EDITOR='vim'

COMPLETION_WAITING_DOTS="true"
#export LANG=en_US.UTF-8
export LANG="de_DE.UTF-8"

zstyle ':completion:*' special-dirs true

plugins=(
  git
  vagrant
)

source $ZSH/oh-my-zsh.sh
