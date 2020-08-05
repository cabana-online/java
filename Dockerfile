FROM cabanaonline/alpine:1.0

USER root

# Downloads compiled libraries.
RUN set -xe; \
    \
    apk add --update --no-cache \
        libx11 fontconfig ttf-dejavu \
        openjdk8-jre; \
    rm -rf /var/cache/apk/*

USER cabana
