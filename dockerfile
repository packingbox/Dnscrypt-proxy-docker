FROM alpine:3.7
MAINTAINER Macro

ENV LOCAL_IP       0.0.0.0
ENV LOCAL_PORT     53
ENV RESOLVER_IP    104.156.253.113
ENV RESOLVER_PORT  443
ENV PROVIDER_NAME  2.dnscrypt-cert.evilvibes.com
ENV PROVIDER_KEY   e7682fe3afe5324d741843c3a42f2310e658462996acdd0c8c0b4b5ab62ebd30
RUN set -xe && \
    apk add --no-cache dnscrypt-proxy

USER root

EXPOSE $LOCAL_PORT/tcp $LOCAL_PORT/udp

CMD dnscrypt-proxy --local-address=$LOCAL_IP:$LOCAL_PORT \
                   --provider-name=$PROVIDER_NAME \
                   --provider-key=$PROVIDER_KEY \
                   --resolver-address=$RESOLVER_IP:$RESOLVER_PORT
