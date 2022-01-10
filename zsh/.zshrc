export ZSH="$HOME/.oh-my-zsh"
export ZSH_THEME="intika"
export ZSH_CUSTOM=$HOME/.fx/zsh/custom
export EDITOR='vim'

COMPLETION_WAITING_DOTS="true"
export LANG=en_US.UTF-8
export LC_ALL="en_US.UTF-8"
#export LANG="de_DE.UTF-8"

zstyle ':completion:*' special-dirs true

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# run post init script if available
[ -e $HOME/.zshrc-post.sh ] && source $HOME/.zshrc-post.sh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
[ -s "$HOME/.rvm/scripts/rvm" ] && \. "$HOME/.rvm/scripts/rvm"

# added by travis gem
[ -f "$HOME/.travis/travis.sh" ] && source "$HOME/.travis/travis.sh"

# jabba java manager
[ -s "$HOME/.jabba/jabba.sh" ] && source "$HOME/.jabba/jabba.sh"

# phpbrew php manager
[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# GPG
GPG_TTY=$(tty)
export GPG_TTY

# volta.sh
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
