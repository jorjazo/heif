FROM debian:testing
RUN apt-get -y update && apt-get -y install build-essential g++ cmake gradle default-jdk
