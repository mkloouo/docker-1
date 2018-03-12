FROM debian

RUN apt-get -qqy update && \
	apt-get -qqy install \
	wget \
	unzip

RUN wget http://terraria.org/server/terraria-server-1353.zip -P /

RUN	unzip terraria-server-1353.zip -d / && \
	mv /1353 /Server && \
	rm -fR /Server/Mac /Server/Windows && \
	mv /Server/Linux /temp && \
	rm -fR /Server && \
	mv /temp /Server

RUN useradd -m -s /bin/bash -G games -c "Terraria Server" terraria-server && \
	mkdir -p /Terraria-Data /home/terraria-server/.local/share/Terraria && \
	ls -s /home/terraria-server/.local/share/Terraria /Terraria-Data && \
	chmod 777 -R /Server /Terraria-Data /home/terraria-server/.local/share/Terraria

USER terraria-server
VOLUME ["/Terraria-Data"]
WORKDIR /Server

EXPOSE 7777

CMD ["bash", "-c", "./TerrariaServer.bin.x86_64"]
