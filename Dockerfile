FROM ubuntu:latest
MAINTAINER Erik R. Rygg <errygg@gmail.com>

EXPOSE 80 443
COPY install.sh /tmp/install.sh

RUN [ "/bin/sh", "/tmp/install.sh" ]

RUN [ "/opt/chef-compliance/bin/chef-compliance-ctl", "reconfigure", "--accept-license" ]

CMD [ "/opt/chef-compliance/bin/chef-compliance-ctl", "start" ]
