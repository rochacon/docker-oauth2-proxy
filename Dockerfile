FROM alpine:3.8
RUN apk add ca-certificates
RUN wget -O- https://github.com/bitly/oauth2_proxy/releases/download/v2.2/oauth2_proxy-2.2.0.linux-amd64.go1.8.1.tar.gz | tar xvzC / --strip-components 1 oauth2_proxy-2.2.0.linux-amd64.go1.8.1/oauth2_proxy
ENTRYPOINT ["/oauth_proxy"]
