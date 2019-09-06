FROM ubuntu:18.04

COPY sources.list /etc/apt/sources.list

RUN apt-get update && apt-get install -y curl vi vim make dos2unix lib32ncurses5 lib32z1 wget git zip && rm -rf /var/lib/apt/lists/*

# RUN wget https://developer.arm.com/-/media/Files/downloads/gnu-rm/8-2019q3/RC1.1/gcc-arm-none-eabi-8-2019-q3-update-linux.tar.bz2?revision=c34d758a-be0c-476e-a2de-af8c6e16a8a2?product=GNU%20Arm%20Embedded%20Toolchain,64-bit,,Linux,8-2019-q3-update \
#     && tar gcc-arm-none-eabi-*.tar.bz2 /opt/ \
#     && rm -f gcc-arm-none-eabi-*.tar.bz2 \
#     && cd /opt/gcc-arm-none-eabi-*/bin && tooldir=${PWD} \
#     && echo "PATH=\$PATH:${tooldir}" >> /etc/profile \
#     && echo "source /etc/profile" >> /root/.bashrc

# LPT230 build tools need to use gcc-arm-none-eabi-7-2018-q2-update-linux.tar.bz2
ADD gcc-arm-none-eabi-*.tar.bz2 /opt/

RUN cd /opt/gcc-arm-none-eabi-*/bin && tooldir=${PWD} \
    && echo "PATH=\$PATH:${tooldir}" >> /etc/profile \
    && echo "source /etc/profile" >> /root/.bashrc
