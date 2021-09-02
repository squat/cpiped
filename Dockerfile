FROM alpine
RUN apk add --no-cache alsa-lib-dev build-base curl && curl -L https://github.com/b-fitzpatrick/cpiped/archive/refs/tags/v0.1.0.tar.gz | tar xvzf - --strip-components 1 && make

FROM alpine
RUN apk add --no-cache alsa-lib
COPY --from=0 cpiped /usr/local/bin/cpiped
ENTRYPOINT ["/usr/local/bin/cpiped"]
