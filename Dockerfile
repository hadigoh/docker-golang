FROM golang:1.10.0

# Download docker static binary to be able to do Docker out of Docker
RUN wget -O docker.tgz https://download.docker.com/linux/static/stable/x86_64/docker-17.12.1-ce.tgz && \
    tar xzvf docker.tgz && \
    mv docker/* /usr/bin/ && \
    rm -rf docker docker.tgz

# Download essential tools for development
RUN go get -u -v \
    github.com/golang/dep/cmd/dep \
    github.com/oxequa/realize \
    github.com/vektra/mockery/... \
    gopkg.in/alecthomas/gometalinter.v2 \
    github.com/jstemmer/go-junit-report \
    github.com/motemen/gore \
    github.com/gobuffalo/packr/...
