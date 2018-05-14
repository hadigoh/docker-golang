# docker-golang
Dockerized golang + tools for development purpose (and ci)

# How to use

```
docker run -it --rm hadigoh/golang
```

Mount volume and expose port as you need

# Image Content

* Based on official golang:1.9.2
* github.com/Masterminds/glide
* github.com/pilu/fresh
* github.com/jstemmer/go-junit-report
* github.com/golang/lint/golint
* github.com/radovskyb/watcher

# Custom scripts

* load-ssh.sh
  This is used for loading `SSH_PRIVATE_KEY` from env variable into ~/.ssh/id_rsa