FROM alpine:latest

LABEL maintainer="saitkocatas@gmail.com"

RUN \
  apk update && \
  apk add --no-cache \
  curl

COPY entrypoint.sh /tmp/entrypoint.sh

ENTRYPOINT ["/tmp/entrypoint.sh"]