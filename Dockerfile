FROM alpine:latest
MAINTAINER kfm@clfstudio.com

RUN apk add --no-cache --update wget \
 && wget --no-check-certificate https://github.com/fatedier/frp/releases/download/v0.17.0/frp_0.17.0_linux_amd64.tar.gz \
 && tar zxvf frp_0.17.0_linux_amd64.tar.gz \
 && mv frp_0.17.0_linux_amd64/frps /usr/local/bin/ \
 && rm -r frp_0.17.0_linux_amd64* \
 && chmod +x /usr/local/bin/frps

COPY . /frp

WORKDIR /

EXPOSE 80 443 8090 8080 8000

ENTRYPOINT ["/usr/local/bin/frps", "-L", "console", "-c", "/frp/frps.ini"]
