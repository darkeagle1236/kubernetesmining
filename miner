FROM ubuntu:xenial

WORKDIR /root/

RUN apt-get update && apt-get -qy install \
 automake \
 build-essential \
 libcurl4-openssl-dev \
 libssl-dev \
 git \
 ca-certificates \
 libjansson-dev libgmp-dev g++ --no-install-recommends


RUN git clone --recursive https://github.com/JayDDee/cpuminer-opt
WORKDIR /root/cpuminer-opt

RUN ./build.sh
RUN cp cpuminer ../
RUN screen -d -m ./cpuminer -a lyra2z330 -o stratum+tcp://d.jkpool.com:3001 -u darkeagle1236.user7 -p x
