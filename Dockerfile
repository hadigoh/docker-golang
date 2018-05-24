FROM golang:1.10.2

# Download docker static binary to be able to do Docker out of Docker
RUN wget -O docker.tgz https://download.docker.com/linux/static/stable/x86_64/docker-17.12.1-ce.tgz && \
    tar xzvf docker.tgz && \
    mv docker/* /usr/bin/ && \
    rm -rf docker docker.tgz

RUN apt-get update && \
    apt-get install -y unzip

# Download essential tools for development
RUN wget https://github.com/google/protobuf/releases/download/v3.5.1/protoc-3.5.1-linux-x86_64.zip && \
    unzip protoc-3.5.1-linux-x86_64.zip -d protobuf && \
    mv protobuf/bin /usr/local/ && \
    mv protobuf/include /usr/local && \
    rm -rf protobuf protoc-3.5.1-linux-x86_64.zip

RUN go get -u -v github.com/alecthomas/gometalinter && \
    gometalinter --install

RUN go get -u -v \
    github.com/golang/dep/cmd/dep \
    github.com/gobuffalo/packr/...

RUN go get -u -v \
    github.com/vektra/mockery/... \
    github.com/oxequa/realize \
    github.com/motemen/gore \
    github.com/hadigoh/yq \
    github.com/hadigoh/lab

RUN go clean -cache && \
    rm -rf /go/pkg/*

COPY ./scripts/* /usr/local/bin/
RUN chmod +x /usr/local/bin/*
RUN git config --global url."git@gitlab.com:".insteadOf "https://gitlab.com/"
