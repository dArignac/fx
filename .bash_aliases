# update aliases
alias uba='curl -s https://raw.githubusercontent.com/darignac/fx/master/.bash_aliases > ~/.bash_aliases && source ~/.bash_aliases'

# paths
PATH_GITHUB=$HOME/projects/github
alias to_gh="cd ${PATH_GITHUB}"
export PATH=$PATH:$HOME/.composer/vendor/bin/

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

# pip
alias pf="pip freeze"
alias pfg="pip freeze | grep -i"
alias pu="pip uninstall"
alias pi="pip install"
#alias pc="pip freeze -l | grep -v distribute | grep -v git+git | xargs pip uninstall -y"
alias pc="pip freeze --local | grep -v '^\-e' | cut -d = -f 1 | xargs -n1 -P10 pip uninstall -y"

# python
alias p="python"
alias p2="python2"
alias p3="python3"
alias pm="python manage.py"
alias pmr="pm runserver 0.0.0.0:8000"
alias pms="pm shell"
alias pmcs="pm collectstatic --noinput"
alias pmsdb="pm syncdb --noinput"
alias pmmig="pm migrate --all"
alias pmcs="pm collectstatic --noinput"
alias pmmin="pm minify --all"
alias pmmig="pm migrate --all"

# python packages
alias rvld="restview --long-description --pypi-strict"

# postgres admin
alias pgadmin_up="docker run -p 80:5050 -v $HOME/pgadmin4:/var/lib/pgadmin --rm --name pgadmin4 -d fenglc/pgadmin4 && echo 'login with pgadmin4@pgadmin.org:admin'"
alias pgadmin_down="docker stop pgadmin4"

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
# does not work as evaluated on run time
#alias gpsoc="git push origin $(git rev-parse --abbrev-ref HEAD)"
#alias gploc="git pull origin $(git rev-parse --abbrev-ref HEAD)"
alias gpl="git pull"
alias gb="git branch -a"
alias gifm="git config core.fileMode false"
alias gfo="git fetch origin"
alias git_remove_executable="git update-index --chmod=-x "
alias git_add_executable="git update-index --chmod=+x "
alias git_fix_local_file_mode_on_windows="git config --local core.filemode false"
alias git_initial="touch .gitignore && git add .gitignore && git commit -m 'initial commit' && git branch -m master development && git push origin development"
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

# svn
SVN_EDITOR=vim
alias svn_url="svn info | grep URL: | tr -d 'URL: '"
alias ss="svn status"
alias svc="svn commit -m "
alias svd="svn diff"
alias svi="svn info"
alias svm="svn merge"
alias svmr="svn merge --reintegrate"
alias svrm="svn rm"
alias svu="svn up"
alias svt="svn status"

# virtualenv
alias da="deactivate"
alias ae=". .env/bin/activate"

# ruby
alias ruby_active="source /home/alex/.rvm/scripts/rvm"

# vagrant
#alias vu="vagrant up"
function vu() {
    vagrant up $1
    vagrant ssh -c "curl -s https://raw.githubusercontent.com/darignac/fx/master/.bash_aliases >> /home/vagrant/.bash_aliases" $1
}
function vu2() {
    vagrant up $1
    vagrant ssh -c "curl -s https://raw.githubusercontent.com/darignac/fx/master/.bash_aliases >> /home/vagrant/.bash_aliases" $1
    vagrant ssh -c "echo 'source .bash_aliases' >> /home/vagrant/.bashrc" $1
}
alias vs="vagrant ssh"
alias vd="vagrant destroy"
alias vr="vagrant reload"
alias vst="vagrant status"
alias vh="vagrant halt"

# services
alias donph="sudo service nginx start && sudo service mysql start && sudo service php5-fpm start"
alias dofph="sudo service nginx stop && sudo service mysql stop && sudo service php5-fpm stop"
alias donpy="sudo service postgresql start && sudo service redis-server start"
alias dofpy="sudo service postgresql stop && sudo service redis-server stop"
alias nginx_re="sudo service nginx restart"

# mysql
alias mysql_create_db='function _mysql_cdb(){ echo "CREATE SCHEMA $1 DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;" | mysql -u root -p; };_mysql_cdb'

# openssl
alias ssh_key="ssh-keygen -t rsa -b 8192"
alias ssl_key="openssl genrsa 4096"
alias ssl_key_rand="openssl dhparam -rand - 2048 >> "
alias ssl_csr="openssl req -new -sha256 -key"
alias ssl_cert="openssl x509 -sha256 -req -days 3000 -in domain.csr -signkey key.pem -out"

# android development
PATH_ADB="$HOME/Android/Sdk/platform-tools"
alias adb_start_server="sudo $PATH_ADB/adb start-server"
alias adb_stop_server="sudo $PATH_ADB/adb kill-server"
alias adb_list="$PATH_ADB/adb devices -l"

# Wordpress
alias wp_i18n_theme="php $HOME/projects/wordpress-core/tools/i18n/makepot.php wp-theme"

# other stuff
alias copy_dvd_regionfree="vobcopy -v -m -F 16 /media/cdrom1"
alias remove_brackets="rename -v 's/\((.*)\)(.*)/$1$2/'"
alias clam_scan="clamscan / -ir --exclude-dir=^/sys --exclude-dir=^/dev --exclude-dir=^/proc --detect-pua=yes --scan-mail=yes --log=$HOME/clamscan.log"
alias flac_replaygain="metaflac --add-replay-gain *.flac"
alias flac_cover_art="metaflac --import-picture-from"
