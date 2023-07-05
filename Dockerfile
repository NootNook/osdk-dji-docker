FROM ubuntu:xenial

# WITHOUT OPENCV

SHELL [ "/bin/bash" , "-c"]

RUN apt-get update && apt upgrade -y
RUN apt-get install -y cmake g++ libavcodec-dev libavformat-dev libavfilter-dev build-essential git libusb-1.0-0-dev libssl-dev

RUN cd /home/Onboard-SDK && mkdir build && cd build
RUN cmake .. && make && cp ../sample/platform/linux/common/UserConfig.txt bin/

WORKDIR /home/Onboard-SDK/build/bin