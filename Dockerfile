FROM python:3.6

MAINTAINER Vipul <vipul.sharma20@gmail.com>

RUN mkdir /djacket
WORKDIR /djacket

RUN apt-get -y update
RUN apt-get -y install git

RUN wget https://bootstrap.pypa.io/get-pip.py && python get-pip.py

ADD requirements.txt /djacket/

RUN pip3 install -r requirements.txt
RUN pip3 install gunicorn

ADD . /djacket/

RUN mkdir repositories

