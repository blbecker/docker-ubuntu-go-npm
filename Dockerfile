FROM ubuntu:bionic@sha256:152dc042452c496007f07ca9127571cb9c29697f42acbfad72324b2bb2e43c98

LABEL maintainer="benjamin.becker@athenitas.com"

RUN apt-get update && \
    apt-get -y install git make gcc nodejs npm curl sudo debhelper

RUN    curl -L "https://dl.google.com/go/go1.12.linux-amd64.tar.gz" -o /root/go1.12.linux-amd64.tgz && \
    tar -C /usr/local -xzf /root/go1.12.linux-amd64.tgz 

ENV PATH="${PATH}:/usr/local/go/bin"

