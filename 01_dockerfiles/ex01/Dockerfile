# TeamSpeak Server

FROM debian

ENV TS_VER "3.1.1"

RUN mkdir -p /usr/share/teamspeak \
	&& curl -SL http://dl.4players.de/ts/releases/3.1.1/teamspeak3-server_linux_amd64-$TS_VER.tar.bz2 \
	&& tar -xJC /usr/share/teamspeak \
	&& make -C 


COPY http://dl.4players.de/ts/releases/3.1.1/teamspeak3-server_linux_amd64-3.1.1.tar.bz2 /root

WORKDIR /usr/share/teamspeak3

CMD ["ts3server_startscript.sh"]

