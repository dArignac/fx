alias mysql_create_db='function _mysql_cdb(){ echo "CREATE SCHEMA $1 DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;" | mysql -u root -p; };_mysql_cdb'