FROM hkjn/golang:1.8.3

USER root
RUN apk add --no-cache gcc
USER go
RUN go get github.com/cloudflare/cfssl/cmd/cfssl

ENTRYPOINT ["cfssl"]
