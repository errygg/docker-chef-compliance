FROM ubuntu:12.04
MAINTAINER Erik R. Rygg <errygg@gmail.com>

EXPOSE 80 443 5432
COPY install.sh /tmp/install.sh
COPY start.sh /tmp/start.sh

RUN [ "/bin/sh", "/tmp/install.sh" ]

CMD [ "/bin/sh", "/tmp/start.sh" ]

