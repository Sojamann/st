FROM ubuntu:20.04

ARG DEBIAN_FRONTENT="noninteractive"
ARG TZ="Europe/Berlin"
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime
RUN apt update && apt install -y make gcc libxft-dev

ENTRYPOINT [ "/bin/bash", "-c"]

