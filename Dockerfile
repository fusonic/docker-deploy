FROM ubuntu:xenial

MAINTAINER Fusonic "office@fusonic.net"

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get upgrade -yy && \
    apt-get install -yy curl awscli ssh ftp rsync && \
    curl -sS https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash && \
    apt-get update && \
    apt-get install -yy git-lfs && \
    git lfs install && \
    rm -rf /tmp/* /var/tmp/* /var/lib/apt/lists/* /usr/share/man

ADD files /
