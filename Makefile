default: image

all: image py_3.6.8

image:
	docker build -f Dockerfile \
	--cache-from matthewfeickert/docker-python3-ubuntu:latest \
	--build-arg PYTHON_VERSION_TAG=3.7.4 \
	--build-arg LINK_PYTHON_TO_PYTHON3=1 \
	-t matthewfeickert/docker-python3-ubuntu:latest \
	-t matthewfeickert/docker-python3-ubuntu:3.7.4 \
	--compress .

py_3.6.8:
	docker build -f Dockerfile \
	--cache-from matthewfeickert/docker-python3-ubuntu:3.6.8 \
	--build-arg PYTHON_VERSION_TAG=3.6.8 \
	--build-arg LINK_PYTHON_TO_PYTHON3=1 \
	-t matthewfeickert/docker-python3-ubuntu:3.6.8 \
	--compress .
