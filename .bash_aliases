# update aliases
alias uba='curl -s https://raw.github.com/darignac/fx/master/.bash_aliases > ~/.bash_aliases && source ~/.bash_aliases'

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

# svn
alias svn_url="svn info | grep URL: | tr -d 'URL: '"

# virtualenv
alias da="deactivate"

# taskwarrior
alias tod="task due:tod"
alias tom="task due:tom"

# services
alias nginx_on="sudo service nginx start"
alias nginx_re="sudo service nginx restart"
alias nginx_off="sudo service nginx stop"
alias mysql_on="sudo service mysql start"
alias mysql_re="sudo service mysql restart"
alias mysql_off="sudo service mysql stop"

# openssl
alias ssl_key="openssl genrsa 4096"
alias ssl_csr="openssl req -new -sha256 -key"


