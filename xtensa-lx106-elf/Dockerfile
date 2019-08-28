FROM ubuntu:16.04

COPY sources.list /etc/apt/sources.list

RUN apt-get update && apt-get install -y git curl && rm -rf /var/lib/apt/lists/*

RUN apt-get install vim make dos2unix lib32ncurses5 lib32z1 wget git && rm -rf /var/lib/apt/lists/*

ADD xtensa-lx106-elf.tar.bz2 /usr/local/

