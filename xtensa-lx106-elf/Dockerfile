FROM ubuntu:18.04

COPY sources.list /etc/apt/sources.list

RUN apt-get update && apt-get install -y zip gcc g++ curl vim make dos2unix lib32ncurses5 lib32z1 wget git python python-pip python-setuptools python-serial python-click python-cryptography python-future python-pyparsing python-pyelftools cmake && rm -rf /var/lib/apt/lists/*

ADD xtensa-lx106-elf.tar.bz2 /opt/

RUN cd /opt/xtensa-lx106-elf*/bin && tooldir=${PWD} \
    && echo "PATH=\$PATH:${tooldir}" >> /etc/profile \
    && echo "source /etc/profile" >> /root/.bashrc
