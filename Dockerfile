FROM alpine:3.23

RUN apk --no-cache add bash docker-cli

COPY ./docker-gc.sh /docker-gc.sh

VOLUME /var/lib/docker-gc

CMD ["/bin/bash", "/docker-gc.sh"]
