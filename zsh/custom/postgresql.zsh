# pgadmin
alias pgadmin_up="docker run -p 80:5050 -v $HOME/pgadmin4:/var/lib/pgadmin --rm --name pgadmin4 -d fenglc/pgadmin4 && echo 'login with pgadmin4@pgadmin.org:admin'"
alias pgadmin_down="docker stop pgadmin4"