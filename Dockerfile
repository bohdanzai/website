FROM alpine
RUN apk add openrc
RUN apk add apache2
RUN apk add mc
COPY index.html /var/www/localhost/htdocs/
COPY styles.css /var/www/localhost/
EXPOSE 80
CMD ["/usr/sbin/httpd", "-DFOREGROUND"]