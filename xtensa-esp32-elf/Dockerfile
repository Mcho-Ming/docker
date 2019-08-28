FROM ubuntu:16.04

COPY sources.list /etc/apt/sources.list

RUN apt-get update && apt-get install -y git curl && rm -rf /var/lib/apt/lists/*

RUN apt-get install vim make dos2unix lib32ncurses5 lib32z1 wget git libncurses-dev flex bison gperf python python-pip python-setuptools python-serial python-click python-cryptography python-future python-pyparsing python-pyelftools cmake ninja-build ccache && rm -rf /var/lib/apt/lists/*

ADD xtensa-esp32-elf-*.tar.gz /usr/local/

RUN cd ~/esp && git clone --recursive https://github.com/espressif/esp-idf.git

