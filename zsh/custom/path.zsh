# github folder
PATH_ZSH=$HOME/projects/github
# composer
PATH_ZSH=$PATH_ZSH:$HOME/.composer/vendor/bin/
# rvm
PATH_ZSH=$PATH_ZSH:$HOME/.rvm/bin
# ffmpeg
PATH_ZSH=$PATH_ZSH:$HOME/ffmpeg-4.0-64bit-static
# sonarcube scanner
PATH_ZSH=$PATH_ZSH:$HOME/sonar-scanner/bin
# yarn
PATH_ZSH=$PATH_ZSH:$HOME/.yarn/bin
# go
PATH_ZSH=$PATH_ZSH:/usr/local/go/bin
PATH_ZSH=$PATH_ZSH:$HOME/go/bin
# python
PATH_ZSH=$PATH_ZSH:$HOME/.local/bin
# flutter
PATH_ZSH=$PATH_ZSH:$HOME/projects/github/flutter/bin
# doctoolchain
PATH_ZSH=$PATH_ZSH:$HOME/projects/github/docToolchain/bin
# maven
PATH_ZSH=$PATH_ZSH:$HOME/apache-maven/bin
# azure functions (only for Ubuntu 21.04 as there is no package)
[ -s "$HOME/azure-functions-cli/func" ] && PATH_ZSH=$PATH_ZSH:$HOME/azure-functions-cli
# cuda
PATH_ZSH=$PATH_ZSH:/usr/local/cuda/bin
# set the PATH variable
export PATH=$PATH:$PATH_ZSH
