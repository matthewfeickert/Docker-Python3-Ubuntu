default: all

all: image

image:
	docker build -f Dockerfile \
	--cache-from matthewfeickert/docker-python3-ubuntu:latest \
	--build-arg PYTHON_VERSION_TAG=3.6.8 \
	--build-arg LINK_PYTHON_TO_PYTHON3=1 \
	-t matthewfeickert/docker-python3-ubuntu:latest \
	--compress .
