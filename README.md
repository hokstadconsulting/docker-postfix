
# Docker Postix container

Very basic initial Docker container for postfix. 

To log you need to mount /dev/log in the container. The alternative is to build another one
with a syslog. 

Mount /var/spool/postfix/vhosts to get access to the virtual mail.

Mount /etc/postfix/valias and/or /etc/postfix/vmailbox to configure delivery

