VERSION=1.0-3.4.13
PROJECT_ID=truthbean
PROJECT=${PROJECT_ID}

all: build

build:
	docker build --pull -t ${PROJECT}/kubernetes-zookeeper:latest .
	docker build --pull -t ${PROJECT}/kubernetes-zookeeper:${VERSION} .

push: build
	docker push ${PROJECT}/kubernetes-zookeeper:latest
	docker push ${PROJECT}/kubernetes-zookeeper:${VERSION}

.PHONY: all build push
