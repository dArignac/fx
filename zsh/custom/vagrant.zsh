alias vs="vagrant ssh"
alias vd="vagrant destroy"
alias vr="vagrant reload"
alias vst="vagrant status"
alias vh="vagrant halt"
function vu() {
    vagrant up $1
    vagrant ssh -c "curl -s https://raw.githubusercontent.com/darignac/fx/master/.bash_aliases >> /home/vagrant/.bash_aliases" $1
}
function vu2() {
    vagrant up $1
    vagrant ssh -c "curl -s https://raw.githubusercontent.com/darignac/fx/master/.bash_aliases >> /home/vagrant/.bash_aliases" $1
    vagrant ssh -c "echo 'source .bash_aliases' >> /home/vagrant/.bashrc" $1
}
