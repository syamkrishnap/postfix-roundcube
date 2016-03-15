#!/bin/sh
chown -R vmail /var/vmail
chown -R www-data /var/www/html/
chown -R mysql /var/lib/mysql
mkdir -p /var/log/apache2 /var/log/mysql
if [ ! -d "/var/lib/mysql/mysql" ]; then /usr/bin/mysql_install_db;fi
/etc/init.d/mysql start;
if [ ! -d "/var/lib/mysql/mail" ]; then mysql < /roundcube_postfixadmin.sql;fi
/etc/init.d/postfix start;/etc/init.d/rsyslog start;/etc/init.d/spamassassin start;/etc/init.d/apache2 start;/usr/sbin/dovecot -F
