FROM python:3.7-alpine
MAINTAINER Daniel K. Hunter

ENV PYTHONUNBUFFERED 1 # WHY?

COPY ./requirements.txt /requirements.txt
RUN pip install -r requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

# for security purposes, you don't want to use the root account from running the app
RUN adduser -D user
USER user