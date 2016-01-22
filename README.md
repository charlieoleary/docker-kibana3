# Kibana 3

Kibana - https://www.elastic.co/products/kibana

Nginx - http://wiki.nginx.org/Main/

## Using the container

The container expects environment variables for your Elasticsearch service to
be passed through from `docker run` (see the command below).

```shell
$ docker pull andrewh/kibana3
```

```shell
$ docker run -e ES_PROTO=http \
             -e ES_HOST=localhost \
             -e ES_PORT=9200 \
             -p 8080:8080 \
             -d \
             andrewh/kibana3
```

## Building the image

```
git clone github.com/andrewh/docker-kibana3
cd docker-kibana3
docker build -t andrewh/kibana3:1.0.0 .
docker run ...
```
