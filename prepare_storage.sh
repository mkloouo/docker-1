#!/bin/sh
# Move .docker folder to /tmp under current USER and link it

if ! [ -d /tmp/$USER/.docker ]
then
	mkdir /tmp/$USER/.docker
fi

if ! [ -L $HOME/.docker ]
then
	mv -f $HOME/.docker /tmp/$USER/
fi

if ! [ -d $HOME/.docker ]
then
	ln -s /tmp/$USER/.docker $HOME/.docker
fi
