FROM debian

ENV LANG C.UTF-8
ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true

RUN apt-get -qqy update \
	&& apt-get -qqy install \
	build-essential \
	emacs \
	valgrind

COPY emacs-42/ /usr/share/emacs/site-lisp/
COPY .emacs /root/

WORKDIR /project

ENTRYPOINT ["bash"]
