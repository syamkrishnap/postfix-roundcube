# postfix-roundcube
USAGE

Create directory for persistent data: accounts, emails, databases and logs.
```
mkdir -p /data/ 
```



Start docker.
```
docker run --env "PADMIN=login" --env "PADMP=password" -d -v /data/mysql:/var/lib/mysql -v /data/vmail/:/var/vmail -v /data/log:/var/log -p 25:25 -p 80:80 -p 110:110 -p 143:143 -p 465:465 -p 993:993 -p 995:995 idle/postfix-roundcube
```



After running container, you can access admin panel here - http://yourhost/postfixadmin, use login and password defined within docker start, with variables PADMP abd PADMIN.
Webmail can be accessed here - http://yourhost/roundcubemail, using accounts created with admin panel. Or you can use you mail client via ports: pop3, smtp, imap, pop3s imaps, smtps.
