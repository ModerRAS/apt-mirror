FROM debian:buster

RUN apt-get update && apt-get install -y apt-transport-https apt-mirror

ADD mirror.list /etc/apt/mirror.list

ENTRYPOINT /usr/bin/apt-mirror
