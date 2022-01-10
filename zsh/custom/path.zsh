# github folder
[ -d "$HOME/projects/github" ] && PATH_ZSH=$HOME/projects/github

# composer
[ -d "$HOME/.composer/vendor/bin/" ] && PATH_ZSH=$PATH_ZSH:$HOME/.composer/vendor/bin/

# rvm
[ -d "$HOME/.rvm/bin" ] && PATH_ZSH=$PATH_ZSH:$HOME/.rvm/bin

# ffmpeg
[ -d "$HOME/ffmpeg-4.0-64bit-static" ] && PATH_ZSH=$PATH_ZSH:$HOME/ffmpeg-4.0-64bit-static

# sonarcube scanner
[ -d "$HOME/sonar-scanner/bin" ] && PATH_ZSH=$PATH_ZSH:$HOME/sonar-scanner/bin

# yarn
[ -d "$HOME/.yarn/bin" ] && PATH_ZSH=$PATH_ZSH:$HOME/.yarn/bin

# go
[ -d "/usr/local/go/bin" ] && PATH_ZSH=$PATH_ZSH:/usr/local/go/bin
[ -d "$HOME/go/bin" ] && PATH_ZSH=$PATH_ZSH:$HOME/go/bin

# python
[ -d "$HOME/.local/bin" ] && PATH_ZSH=$PATH_ZSH:$HOME/.local/bin

# flutter
[ -d "$HOME/projects/github/flutter/bin" ] && PATH_ZSH=$PATH_ZSH:$HOME/projects/github/flutter/bin

# doctoolchain
[ -d "$HOME/projects/github/docToolchain/bin" ] && PATH_ZSH=$PATH_ZSH:$HOME/projects/github/docToolchain/bin

# maven
[ -d "$PATH_ZSH:$HOME/apache-maven/bin" ] && PATH_ZSH=$PATH_ZSH:$HOME/apache-maven/bin

# azure functions (only for Ubuntu 21.04 as there is no package)
[ -s "$HOME/azure-functions-cli/func" ] && PATH_ZSH=$PATH_ZSH:$HOME/azure-functions-cli

# cuda
[ -d "/usr/local/cuda/bin" ] && PATH_ZSH=$PATH_ZSH:/usr/local/cuda/bin

# homebrew (on Mac)
[ -d "$HOME/homebrew" ] && PATH_ZSH=$PATH_ZSH:$HOME/homebrew/bin

# set the PATH variable
export PATH=$PATH:$PATH_ZSH
