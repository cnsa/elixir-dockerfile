VERSION?=1.3.4

all: build push

latest: tag_latest push_latest

build:
	docker build --build-arg VERSION=${VERSION} -t cnsa/elixir:${VERSION} .

tag_latest:
	docker tag cnsa/elixir:${VERSION} cnsa/elixir:latest

push:
	docker push cnsa/elixir:${VERSION}

push_latest:
	docker push cnsa/elixir:latest

