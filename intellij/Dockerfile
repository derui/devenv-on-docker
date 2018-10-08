FROM library/openjdk:11-slim


ENV DEBIAN_FRONTEND noninteractive

COPY intellij.tar.gz /tmp/intellij.tar.gz
RUN apt-get update -y && apt-get install -y && \
    apt-get install -y xorg && \
    mkdir /idea && tar xf /tmp/intellij.tar.gz --strip-components 1 -C /idea

WORKDIR /work

CMD ["bash"]