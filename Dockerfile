FROM alpine:3.1
MAINTAINER <vidar@hokstad.com>

RUN apk add --update postfix && rm -rf /var/cache/apk/*
RUN mkdir -p /var/spool/mail/vhosts
RUN chown root /var/spool/postfix
RUN chown -R vmail:postdrop /var/spool/mail/vhosts

ADD main.cf /etc/postfix/main.cf
RUN chmod g-w /etc/postfix/*

EXPOSE 25
EXPOSE 587

VOLUME /var/spool/mail/vhosts

ADD run /usr/bin/run
CMD ["/usr/bin/run"]
