# docker-golang
Dockerized golang + tools for development purpose (and ci)

# How to use

```
docker run -it --rm hadigoh/golang
```

Mount volume and expose port as you need

# Image Content

* Based on official golang:1.10.2
* github.com/golang/dep
* github.com/gobuffalo/packr
* github.com/alecthomas/gometalinter
* github.com/vektra/mockery
* github.com/oxequa/realize
* github.com/motemen/gore
* github.com/mikefarah/yq
* github.com/hadigoh/git-lab
* protobuf compiler (protoc)
* Docker client

# Custom scripts

* load-ssh.sh
  Load `SSH_PRIVATE_KEY` from env variable into ~/.ssh/id_rsa
* save-cache.sh [...]
  Copy files and directories indicated by arguments into `CACHE_DIR` (useful for gitlab ci)
* load-cache.sh
  Load saved cache (useful for gitlab ci)
* move-to-gopath.sh
  Move `CI_PROJECT_DIR` into `GO_PROJECT_DIR` (useful for gitlab ci)