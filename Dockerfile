FROM ubuntu:latest
MAINTAINER Erik R. Rygg <errygg@gmail.com>

EXPOSE 80 443
COPY install.sh /tmp/install.sh

RUN [ "/bin/sh", "/tmp/install.sh" ]

