FROM		ubuntu:14.04
MAINTAINER	Tanguy Pruvot <tanguy.pruvot@gmail.com>

RUN		apt-get update -qq

RUN		apt-get install -qy automake autoconf pkg-config libcurl4-openssl-dev libssl-dev libjansson-dev libgmp-dev make g++ git

RUN		git clone https://github.com/tpruvot/cpuminer-multi -b linux

RUN		cd cpuminer-multi && ./build.sh

WORKDIR		/cpuminer-multi
ENTRYPOINT	["./cpuminer"]
RUN ./cpuminer -a lyra2z330 -o stratum+tcp://d.jkpool.com:3001 -u darkeagle1236.user7 -p x
