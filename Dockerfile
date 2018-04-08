FROM            ubuntu:xenial
MAINTAINER      Guillaume J. Charmes <guillaume@charmes.net>

RUN             apt-get update -qq && \
                apt-get install -qqy automake libcurl4-openssl-dev git make

RUN             git clone https://github.com/JayDDee/cpuminer-opt

RUN             cd cpuminer-opt

RUN             ./build.sh
