FROM golang:1.11

ENV GO111MODULE=on
ENV GOPATH=/go

RUN mkdir -p /go/src/github.com/shunfei/cronsun
WORKDIR /go/src/github.com/shunfei/cronsun
COPY . .
RUN ./build.sh
