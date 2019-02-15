FROM python:3.7-alpine
MAINTAINER Yash

ENV PYTHONUNBUFFERED 1

ENV http_proxy http://10.91.118.10:80/
ENV https_proxy http://10.91.118.10:80/

COPY ./requirements.txt /requirements.txt


RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user
