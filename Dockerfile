FROM ubuntu:xenial

MAINTAINER Fusonic "office@fusonic.net"

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get upgrade -yy && \
    apt-get install -yy awscli ssh ftp && \
    rm -rf /tmp/* /var/tmp/* /var/lib/apt/lists/* /usr/share/man
