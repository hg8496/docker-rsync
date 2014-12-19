FROM ubuntu

MAINTAINER hg8496@cstolz.de

RUN apt-get update \
    && apt-get dist-upgrade -y \
    && apt-get install rsync -y
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
