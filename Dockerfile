FROM golang:1.9.2

RUN go get -u -v \
    github.com/Masterminds/glide \
    github.com/pilu/fresh \
    github.com/jstemmer/go-junit-report \
    github.com/golang/lint/golint \
    github.com/radovskyb/watcher/...
