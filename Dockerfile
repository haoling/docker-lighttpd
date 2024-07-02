ARG VERSION
FROM ghcr.io/jitesoft/lighttpd:${VERSION}
COPY entrypoint /usr/local/bin/entrypoint
COPY accesslog.conf /etc/lighttpd/conf.d/000-accesslog.conf
COPY errorlog.conf /etc/lighttpd/conf.d/000-errorlog.conf
RUN mkdir /var/log/lighttpd &&\
    ln -s /dev/pts/0 /var/log/lighttpd/stdout &&\
    ln -s /dev/pts/0 /var/log/lighttpd/stderr
