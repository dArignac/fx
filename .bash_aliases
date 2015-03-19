# update aliases
alias uba='curl -s https://raw.githubusercontent.com/darignac/fx/master/.bash_aliases > ~/.bash_aliases && source ~/.bash_aliases'

# paths
PATH_GITHUB=/home/alex/projects/github
alias to_github="cd ${PATH_GITHUB}"

# list files
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

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

# git
alias gis="git status"
alias gpushom="git push origin master"
alias gpullom="git pull origin master"
alias gcm="git commit -m "
alias glr="git rev-parse --verify HEAD"
alias gpso="git push origin"
alias gplo="git pull origin"
alias gpsoc="git push origin `git rev-parse --abbrev-ref HEAD`"
alias gploc="git pull origin `git rev-parse --abbrev-ref HEAD`"
alias gpl="git pull"
alias gb="git branch -a"
alias gifm="git config core.fileMode false"
alias gfo="git fetch origin"

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

# taskwarrior
alias tod="task due:tod"
alias tom="task due:tom"

# vagrant
alias vu="vagrant up"
alias vs="vagrant ssh"
alias vd="vagrant destroy"
alias vr="vagrant reload"

# services
alias donph="sudo service nginx start && sudo service mysql start && sudo service php5-fpm start"
alias dofph="sudo service nginx stop && sudo service mysql stop && sudo service php5-fpm stop"
alias donpy="sudo service postgresql start && sudo service redis-server start"
alias dofpy="sudo service postgresql stop && sudo service redis-server stop"
alias nginx_re="sudo service nginx restart"

# mysql
alias mysql_create_db='function _mysql_cdb(){ echo "CREATE SCHEMA $1 DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;" | mysql -u root -p; };_mysql_cdb'

# openssl
alias ssl_key="openssl genrsa 4096"
alias ssl_csr="openssl req -new -sha256 -key"

# android development
alias adb_start_server="sudo $ADB_PATH/adb start-server"
alias adb_stop_server="sudo $ADB_PATH/adb kill-server"
alias adb_list="$ADB_PATH/adb devices -l"

# weird ubuntu 14.10 stuff
# nvidia driver fails after installing new kernel
# see https://bugs.launchpad.net/ubuntu/+source/nvidia-graphics-drivers-331-updates/+bug/1268257
# this fixes it:
alias nvidia_rebuild="sudo dpkg-reconfigure nvidia-331-updates"

# project specific
alias pm_worker="DJANGO_CONFIGURATION=Dev celery -A monitor worker -n 'pricemonitor.zoe.vc' -l DEBUG"
alias pm_beat="DJANGO_CONFIGURATION=Dev celery -A monitor beat -l DEBUG"
