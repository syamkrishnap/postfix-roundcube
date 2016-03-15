# postfix-roundcube
USAGE
mkdir -p /data/log /data/mysql /data/vmail
docker run -d -v /data/mysql:/var/lib/mysql -v /data/vmail/:/var/vmail -v /data/log:/var/log -p 25:25 -p 80:80 -p 110:110 -p 143:143 -p 465:465 -p 993:993 idle/postfix-roundcube
After running container, you can access it with your browser at http://yourhost/roundcubemail, and http://yourhost/postfixadmin - here is login admin@example.com and password postfix29.
