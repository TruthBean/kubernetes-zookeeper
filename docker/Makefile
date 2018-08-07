VERSION=1.0-3.4.10
PROJECT_ID=truthbean
PROJECT=registry.docker-cn.com/${PROJECT_ID}

all: build

build:
	docker build --pull -t ${PROJECT}/kubernetes-zookeeper:${VERSION} .

push: build
	docker -- push ${PROJECT}/kubernetes-zookeeper:${VERSION}

.PHONY: all build push
