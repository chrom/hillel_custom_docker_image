FROM ubuntu:18.04
ENV PORT 8080
EXPOSE $PORT
COPY index.html /var/www/html/index.html
RUN apt-get update && \
    apt-get install -y apache2 apache2-utils && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
RUN sed -i -e 's/Listen 80/Listen 80\nServerName localhost/' /etc/apache2/ports.conf
RUN sed -i "s/80/$PORT/g" /etc/apache2/sites-available/000-default.conf /etc/apache2/ports.conf
RUN cat /etc/apache2/ports.conf

RUN useradd -ms /bin/bash hillel_devops
ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
