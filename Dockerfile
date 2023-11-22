FROM ubuntu:jammy@sha256:2b7412e6465c3c7fc5bb21d3e6f1917c167358449fecac8176c6e496e5c1f05f

LABEL maintainer="benjamin.becker@athenitas.com"

RUN apt-get update && \
    apt-get -y install git make gcc nodejs npm curl sudo debhelper

RUN    curl -L "https://dl.google.com/go/go1.12.linux-amd64.tar.gz" -o /root/go1.12.linux-amd64.tgz && \
    tar -C /usr/local -xzf /root/go1.12.linux-amd64.tgz 

ENV PATH="${PATH}:/usr/local/go/bin"

