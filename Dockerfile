FROM debian

COPY etc/apt/sources.list /etc/apt/sources.list

RUN dpkg --add-architecture i386 && \
      apt update && \
      apt install -y \
        ca-certificates

RUN ln -s /usr/games/steamcmd /usr/local/bin/steamcmd && \
      echo '2' | apt install -y steamcmd

ENTRYPOINT ["steamcmd"]
