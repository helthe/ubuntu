# Helthe Ubuntu

FROM stackbrew/ubuntu:14.04
MAINTAINER Carl Alexander <carlalexander@helthe.co>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y && apt-get install -y curl wget

# Sync container timezone with server
RUN echo "UTC" > /etc/timezone; dpkg-reconfigure tzdata
