alias dcc="docker ps -a --no-trunc | grep 'Exit' | awk '{print \$1}' | xargs -r docker rm"
alias dccc="docker ps -a --no-trunc | grep 'Created' | awk '{print \$1}' | xargs -r docker rm"
alias dci="docker images --no-trunc | grep none | awk '{print \$3}' | xargs -r docker rmi"
alias di="docker images"
alias dps="docker ps -a"
alias dcp="docker-compose"
function dci_grep() {
    docker images --no-trunc | grep $1 | awk '{print $3}' | xargs -r docker rmi
}
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
