FROM python:3.8-alpine3.11
MAINTAINER Israel Obando

ENV PYTHONUNBUFFERED 1

#Install dependecies

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

#Setup directory structure
RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user 