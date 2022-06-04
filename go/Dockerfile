FROM golang:1.18-alpine

ENV  SRCPATH "/usr/local/project"

RUN mkdir -p $SRCPATH/go/hello;

COPY   ./main.go $SRCPATH/go/hello/


RUN  go build -o /opt/server /usr/local/project/go/hello/main.go

WORKDIR  /opt

EXPOSE 8080:8080
CMD /opt/server







