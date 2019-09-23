FROM ubuntu:16.04

COPY sources.list /etc/apt/sources.list

RUN apt-get update && apt-get install -y build-essential patch gettext libncurses5-dev curl vim make dos2unix lib32ncurses5 lib32z1 wget git zip && rm -rf /var/lib/apt/lists/*

ADD build_env_mini_L718_*.tar.xz /opt/

RUN cd /opt/build_env_mini/build/usr/bin && tooldir=${PWD} \
    && echo "PATH=\$PATH:${tooldir}" >> /etc/profile \
    && echo "source /etc/profile" >> /root/.bashrc
