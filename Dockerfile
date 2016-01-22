# Kibana 3
#
# VERSION 1.0.0

FROM ubuntu:14.04
MAINTAINER Andrew Hodgson <andrew@deploydigital.net>

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update \
  && apt-get install -qq curl nginx-full \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*
RUN mkdir -p /src/kibana
RUN cd /src/kibana \
  && curl -sO https://download.elastic.co/kibana/kibana/kibana-3.1.3.tar.gz \
  && tar --strip-components=1 -xzf kibana-3.1.3.tar.gz

ADD ./nginx.conf /etc/nginx/nginx.conf
ADD ./start.sh /src/start.sh

EXPOSE 8080

CMD ["sh", "-ex", "/src/start.sh"]
