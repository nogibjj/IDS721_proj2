# FROM alpine:latest
# RUN apk update && apk add bash

# WORKDIR /app
# COPY repeat.sh /app
FROM python:3.9.13

ADD . /Project2/

WORKDIR /Project2

RUN pip install -r /Project2/requirements.txt
RUN pip install requests

CMD python app.py