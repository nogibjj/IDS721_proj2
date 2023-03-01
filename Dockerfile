# FROM alpine:latest
# RUN apk update && apk add bash

# WORKDIR /app
# COPY repeat.sh /app
FROM python:3.9.13

ADD . /Project2/

WORKDIR /Project2

RUN pip install -r /Project2/requirements.txt
RUN pip install requests
EXPOSE 8080

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0", "--port=8080"]