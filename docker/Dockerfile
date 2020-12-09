FROM debian:stretch
LABEL maintainer="YouLike Developers <dev@youlike.org>"
LABEL description="Dockerised YouLikeCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
