FROM python:3.7-slim

MAINTAINER "Neo Peng <pengzhile@gmail.com>"

#VOLUME /data
WORKDIR /opt/app
ADD . .
RUN pip install --upgrade pip && pip install .[api,cloud]
ENV PANDORA_CLOUD=0.0.0.0:8018

ENTRYPOINT ["bin/startup.sh"]
