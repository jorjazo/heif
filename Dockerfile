FROM jorjazo/debain-build-env
COPY build /tmp/heif/build
COPY srcs /tmp/heif/srcs
WORKDIR /tmp/heif/build
RUN cmake ../srcs
RUN cmake --build .
WORKDIR /tmp/heif/build/java-desktop
RUN gradle build


FROM openjdk:13-jdk
RUN mkdir /heif
#RUN cp /tmp/heif/build

