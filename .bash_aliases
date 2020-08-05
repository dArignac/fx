# update aliases
alias uba='curl -s https://raw.githubusercontent.com/darignac/fx/master/.bash_aliases > ~/.bash_aliases && source ~/.bash_aliases'

# list files
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# docker
alias dcc="docker ps -a --no-trunc | grep 'Exit' | awk '{print \$1}' | xargs -r docker rm"
alias dccc="docker ps -a --no-trunc | grep 'Created' | awk '{print \$1}' | xargs -r docker rm"
alias dci="docker images --no-trunc | grep none | awk '{print \$3}' | xargs -r docker rmi"
function dci_grep() {
    docker images --no-trunc | grep $1 | awk '{print $3}' | xargs -r docker rmi
}
alias di="docker images"
alias dps="docker ps -a"
alias dcp="docker-compose"
function dcp2() {
    dcp stop && dcc
}
function dcp3() {
    dcp up -d && dcp logs -f
}
function dcp4() {
    dcp stop && dcc && dcp up -d && dcp logs -f
}
function dcp5() {
    dcp stop && dcc && dcp build && dcp up -d && dcp logs -f
}

# git
alias gis="git status"
alias gpushom="git push origin master"
alias gpullom="git pull origin master"
alias gcm="git commit -m "
alias gcms="git commit -S -m"
alias glr="git rev-parse --verify HEAD"
alias gpso="git push origin"
alias gplo="git pull origin"
alias gpt="git push origin --tags"
alias gpd="git pull origin development"
alias gpsd="git push origin development"
alias gmd="git merge development"
alias gpl="git pull"
alias gb="git branch -a"
alias gifm="git config core.fileMode false"
alias gfo="git fetch origin"
alias git_remove_executable="git update-index --chmod=-x "
alias git_add_executable="git update-index --chmod=+x "
alias git_fix_local_file_mode_on_windows="git config --local core.filemode false"
alias git_initial="touch .gitignore && git add .gitignore && git commit -m 'initial commit' && git push origin master && git branch -m master development && git push origin development"
function g2d() {
    git checkout development
    git pull origin development
    git remote prune origin
    git branch -d $1
}
function gsw() {
    git checkout $1
    git pull origin $1
}
function git_remove_tag() {
    git tag -d $1 && git push origin --delete $1
}
function git_retag() {
    git tag -d $1 && git push origin --delete $1 && git tag $1 && git push origin --tags
}
function git_remove_all_tags() {
    git tag | xargs git push origin --delete && git tag | xargs git tag -d
}
function git_cache_credentials() {
    git config --global credential.helper cache
    git config --global credential.helper 'cache --timeout=14400'
}

# openssl
alias ssh_key="ssh-keygen -t rsa -b 8192"
alias ssl_key="openssl genrsa 4096"
alias ssl_key_rand="openssl dhparam -rand - 2048 >> "
alias ssl_csr="openssl req -new -sha256 -key"
alias ssl_cert="openssl x509 -sha256 -req -days 3000 -in domain.csr -signkey key.pem -out"
function ssl_validity() {
    echo | openssl s_client -servername $1 -connect $1:443 2>/dev/null | openssl x509 -noout -dates
}
