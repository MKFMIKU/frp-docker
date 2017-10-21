FROM alpine:latest
MAINTAINER kfm@clfstudio.com

COPY . /frp
COPY . entrypoint.sh

WORKDIR /

EXPOSE 80 443 8090 8080 8000

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]