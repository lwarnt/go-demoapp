FROM golang:1.18-bullseye as builder

WORKDIR /go/src/demoapp

COPY src/ .

RUN go mod init

RUN mkdir -p /go/bin

CMD ["go", "build", "-o", "/go/bin/", "demoapp",  "/go/src/demoapp"]