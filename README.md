
# Docker Postfix container

Very basic Docker container for postfix. We use this primarily to handle forwarding for
secondary domains, and so very little is done to make configuration flexible.

To log you need to mount /dev/log in the container. The alternative is to build another one
with a syslog. 

Mount /var/spool/postfix/vhosts to get access to the virtual mail.

Mount /etc/postfix/valias and/or /etc/postfix/vmailbox to configure delivery

