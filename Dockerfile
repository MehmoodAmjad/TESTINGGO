FROM golang:latest

RUN mkdir /build
WORKDIR /build

RUN export GO111MODULE=on
RUN go install main.go
RUN cd /build && git clone https://github.com/MehmoodAmjad/buildapi.git

RUN cd /build/TESTINGGO/main && go build

EXPOSE 4000

ENTRYPOINT [ "/build/TESTINGGO/main/main" ]