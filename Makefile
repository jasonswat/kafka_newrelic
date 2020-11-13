default: help

repo=jasonswat
image_name=newrelic_kafka_1.12.6
version=0.1.0

help: ## this help
	@awk 'BEGIN {FS = ":.*?## "} /^[\/a-zA-Z_-]+:.*?## / {sub("\\\\n",sprintf("\n%22c"," "), $$2);printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}' Makefile

build: ## Build the docker image
	docker build --tag ${repo}/${image_name}:${version} .
