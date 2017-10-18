FROM hkjn/golang

ARG goarch

USER root
RUN apk add --no-cache gcc
USER go

ENV CGO_ENABLED=0 \
    GOOS=linux \
    GOARCH=${goarch}

RUN go get -v github.com/cloudflare/cfssl/cmd/...

ENTRYPOINT ["cfssl"]
