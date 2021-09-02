FROM alpine:latest

RUN	apk add --no-cache \
  bash \
  ca-certificates \
  curl \
  wget \
  jq \
  samba-client

COPY iis-install.sh /iis-install.sh

ENTRYPOINT ["/iis-install.sh"]
