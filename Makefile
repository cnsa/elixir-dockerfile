VERSION?=latest
FOLDER?=1.5

all: build push

build:
	docker build -t cnsa/elixir-iconv:${VERSION} ./${FOLDER}

push:
	docker push cnsa/elixir-iconv:${VERSION}
