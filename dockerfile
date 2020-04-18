FROM debian

RUN apt update && apt install bash && apt install git -y && apt install build-essential -y && apt install gcc-multilib -y && apt install iputils-ping -y

WORKDIR /home/script/

RUN git clone https://github.com/IskandarovaKamila/sp5.git \
	&& cd sp5/ \
	&& g++ 1.cpp -o 1 -pthread \ 
	&& g++ 2.cpp -o 2 -lstdc++fs -pthread

WORKDIR /home/script/sp5/
