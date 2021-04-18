FROM golang:1.12.0-alpine3.9

ADD . /go/src/github.com/nitinjangam/go-mux

RUN go install github.com/nitinjangam/go-mux

ENV APP_DB_USERNAME postgres
ENV APP_DB_PASSWORD postgres
ENV APP_DB_NAME postgres

ENTRYPOINT /go/bin/go-mux

EXPOSE 8085
