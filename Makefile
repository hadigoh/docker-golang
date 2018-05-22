
docker:
	docker build -t hadigoh/golang .
	@if [ ! -z "$(TAG)" ]; then \
		docker tag hadigoh/golang:latest hadigoh/golang:$(TAG); \
	fi

.PHONY: docker