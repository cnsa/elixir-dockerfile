VERSION?=latest

build:
	docker build -t cnsa/elixir:${VERSION} .

push:
	docker push cnsa/elixir:${VERSION}
