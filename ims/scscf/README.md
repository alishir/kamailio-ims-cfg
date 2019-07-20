CREATE USER 'scscf_u'@'localhost' IDENTIFIED BY 'scscf_p';
CREATE DATABASE scscf_db;
GRANT ALL PRIVILEGES ON scscf_db.* TO 'scscf_u'@'localhost';

# user mariadb 10.2 or above or mysql 5.7 or above
sudo kamailio -f /etc/kamailio/kamailio.cfg -eE  -ddd -DD
