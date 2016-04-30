FROM debian

MAINTAINER Joshua Cook <me@joshuacook.me>

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
  apt-get -y install \
  software-properties-common

RUN apt-add-repository ppa:brightbox/ruby-ng && \
  apt-get update && \
  apt-get -y install \
    ruby2.2 \
    ruby2.2-dev \
    build-essential
