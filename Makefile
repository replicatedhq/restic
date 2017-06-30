.PHONY: docker

build:
	docker build -t restic:0.6.1 .
