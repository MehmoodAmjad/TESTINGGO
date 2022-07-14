FROM golang:latest

RUN mkdir /build
WORKDIR /build

RUN export GO111MODULE=on
RUN go install github.com/MehmoodAmjad/TESTINGGO@latest
RUN cd /build && git clone https://github.com/MehmoodAmjad/TESTINGGO.git

RUN cd /build/TESTINGGO && go build

EXPOSE 4000

ENTRYPOINT [ "/build/TESTINGGO/main" ]
