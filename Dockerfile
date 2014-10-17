FROM ubuntu
MAINTAINER José Moreira <josemoreiravarzim@gmail.com>

RUN apt-get update -y
RUN apt-get install -y python-software-properties && add-apt-repository -y ppa:ubuntu-wine/ppa
RUN apt-get update -y

RUN apt-get install -y wine1.7 winetricks xvfb

RUN apt-get purge -y python-software-properties
RUN apt-get autoclean -y

xvfb-run -a winetricks ie8
