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
# pip
alias pf="pip freeze"
alias pfg="pip freeze | grep -i"
alias pu="pip uninstall"
alias pi="pip install"
alias pc="pip freeze --local | grep -v '^\-e' | cut -d = -f 1 | xargs -n1 -P10 pip uninstall -y"
# virtualenv
alias da="deactivate"
alias ae=". .env/bin/activate"
# restview
alias rvld="restview --long-description --pypi-strict"
