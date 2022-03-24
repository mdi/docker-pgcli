DOCKER_USER := mdirwin
PRODUCT := pgcli

build:
	docker build -t $(DOCKER_USER)/$(PRODUCT) .
