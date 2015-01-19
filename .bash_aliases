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
alias pfg='pip freeze | grep -i'
alias pu="pip uninstall"
alias pi="pip install"
alias pc="pip freeze -l | grep -v 'distribute' | xargs pip uninstall -y"

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

# git
alias gis="git status"
alias gpushom="git push origin master"
alias gpullom="git pull origin master"
alias gcm="git commit -m "
alias glr="git rev-parse --verify HEAD"
alias gpso="git push origin"
alias gplo="git pull origin"
alias gb="git branch -a"
alias gifm="git config core.fileMode false"

# svn
alias svn_url="svn info | grep URL: | tr -d 'URL: '"
alias ss="svn status"
alias svc="svn commit -m "
alias svu="svn up"
alias svt="svn status"

# virtualenv
alias da="deactivate"

# taskwarrior
alias tod="task due:tod"
alias tom="task due:tom"

# services
alias dev_on_php="sudo service nginx start && sudo service mysql start && sudo service php5-fpm start"
alias dev_off_php="sudo service nginx stop && sudo service mysql stop && sudo service php5-fpm stop"
alias dev_on_python="sudo service postgresql start"
alias dev_off_python="sudo service postgresql stop"
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

