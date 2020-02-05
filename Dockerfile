FROM docker/compose:alpine-1.25.4

RUN apk add --no-cache curl && apk add --no-cache bash && apk add --no-cache git

RUN base_url_machine=https://github.com/docker/machine/releases/download/v0.16.0 && \
    curl -L $base_url_machine/docker-machine-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-machine  && \
    chmod +x /usr/local/bin/docker-machine