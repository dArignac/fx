alias pcc="podman ps -a --no-trunc | grep 'Exit' | awk '{print \$1}' | xargs -r podman rm"
alias pccc="podman ps -a --no-trunc | grep 'Created' | awk '{print \$1}' | xargs -r podman rm"
alias pci="podman images --no-trunc | grep none | awk '{print \$3}' | xargs -r podman rmi"
alias psc="podman ps -a --no-trunc | grep -v CONTAINER | awk '{print \$1}' | xargs -r podman stop"
alias pi="podman images"
alias pps="podman ps -a"
alias pcp="podman-compose"
function pci_grep() {
    podman images --no-trunc | grep $1 | awk '{print $3}' | xargs -r podman rmi
}
function pcp2() {
    dcp stop && dcc
}
function pcp3() {
    dcp up -d && dcp logs -f
}
function pcp4() {
    dcp stop && dcc && dcp up -d && dcp logs -f
}
function pcp5() {
    dcp stop && dcc && dcp build && dcp up -d && dcp logs -f
}
