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
  vagrant
  nvm
)

source $ZSH/oh-my-zsh.sh

# run post init script if available
[ -e $HOME/.zshrc-post.sh ] && source $HOME/.zshrc-post.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
[ -s "$HOME/.rvm/scripts/rvm" ] && \. "$HOME/.rvm/scripts/rvm"

# added by travis gem
[ -f "$HOME/.travis/travis.sh" ] && source "$HOME/.travis/travis.sh"

[ -s "$HOME/.jabba/jabba.sh" ] && source "$HOME/.jabba/jabba.sh"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
