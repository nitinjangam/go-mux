FROM golang:1.12.0-alpine3.9

WORKDIR $GOPATH/src/nitinjangam/go-mux

RUN apk update
RUN apk add git

ADD . /go/src/github.com/nitinjangam/go-mux

COPY . /go/src/github.com/nitinjangam/go-mux/.

RUN go get -u github.com/gorilla/mux

RUN go get github.com/lib/pq

RUN go install github.com/nitinjangam/go-mux

ENTRYPOINT /go/bin/go-mux

EXPOSE 8085
