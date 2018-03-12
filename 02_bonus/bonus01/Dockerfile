FROM debian

RUN apt-get -qqy update && \
	apt-get -qqy install \
	nodejs \
	build-essential \
	curl

RUN curl -o- -L https://yarnpkg.com/install.sh | \
	bash && \
	apt-get -qqy purge curl

WORKDIR /project
EXPOSE 8080

CMD ["bash"]

