FROM ubuntu

MAINTAINER hg8496@cstolz.de

RUN export DEBIAN_FRONTEND=noninteractive \
    && apt-get update \
    && apt-get dist-upgrade -y \
    && apt-get install rsync ssh -y \
    && mkdir -p /var/run/sshd \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD run.sh /run.sh

CMD ["/run.sh"]

ENV AUTHORIZED_KEYS **None**
EXPOSE 22


