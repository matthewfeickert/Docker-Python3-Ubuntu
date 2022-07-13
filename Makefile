default: image

all: image py_3.10.5 py_3.9.10 py_3.8.3 py_3.8.1 py_3.8.0 py_3.7.4 py_3.6.8

image:
	docker build \
	-f Dockerfile \
	--cache-from matthewfeickert/docker-python3-ubuntu:latest \
	--build-arg PYTHON_VERSION_TAG=3.10.5 \
	--build-arg LINK_PYTHON_TO_PYTHON3=1 \
	-t matthewfeickert/docker-python3-ubuntu:latest \
	-t matthewfeickert/docker-python3-ubuntu:3.10.5 \
	.

py_3.10.5:
	docker build \
	-f Dockerfile \
	--cache-from matthewfeickert/docker-python3-ubuntu:latest \
	--build-arg PYTHON_VERSION_TAG=3.10.5 \
	--build-arg LINK_PYTHON_TO_PYTHON3=1 \
	-t matthewfeickert/docker-python3-ubuntu:latest \
	-t matthewfeickert/docker-python3-ubuntu:3.10.5 \
	.

py_3.9.10:
	docker build . \
	--pull \
	-f Dockerfile \
	--cache-from matthewfeickert/docker-python3-ubuntu:latest \
	--build-arg PYTHON_VERSION_TAG=3.9.10 \
	--build-arg LINK_PYTHON_TO_PYTHON3=1 \
	-t matthewfeickert/docker-python3-ubuntu:latest \
	-t matthewfeickert/docker-python3-ubuntu:3.9.10 \
	--compress

py_3.8.3:
	docker build . \
	--pull \
	-f Dockerfile \
	--cache-from matthewfeickert/docker-python3-ubuntu:latest \
	--build-arg PYTHON_VERSION_TAG=3.8.3 \
	--build-arg LINK_PYTHON_TO_PYTHON3=1 \
	-t matthewfeickert/docker-python3-ubuntu:latest \
	-t matthewfeickert/docker-python3-ubuntu:3.8.3 \
	--compress

py_3.8.1:
	docker build -f Dockerfile \
	--cache-from matthewfeickert/docker-python3-ubuntu:latest \
	--build-arg PYTHON_VERSION_TAG=3.8.1 \
	--build-arg LINK_PYTHON_TO_PYTHON3=1 \
	-t matthewfeickert/docker-python3-ubuntu:latest \
	-t matthewfeickert/docker-python3-ubuntu:3.8.1 \
	--compress .

py_3.8.0:
	docker build -f Dockerfile \
	--cache-from matthewfeickert/docker-python3-ubuntu:latest \
	--build-arg PYTHON_VERSION_TAG=3.8.0 \
	--build-arg LINK_PYTHON_TO_PYTHON3=1 \
	-t matthewfeickert/docker-python3-ubuntu:latest \
	-t matthewfeickert/docker-python3-ubuntu:3.8.0 \
	--compress .

py_3.7.4:
	docker build -f Dockerfile \
	--cache-from matthewfeickert/docker-python3-ubuntu:3.7.4 \
	--build-arg PYTHON_VERSION_TAG=3.7.4 \
	--build-arg LINK_PYTHON_TO_PYTHON3=1 \
	-t matthewfeickert/docker-python3-ubuntu:3.7.4 \
	--compress .

py_3.6.8:
	docker build -f Dockerfile \
	--cache-from matthewfeickert/docker-python3-ubuntu:3.6.8 \
	--build-arg PYTHON_VERSION_TAG=3.6.8 \
	--build-arg LINK_PYTHON_TO_PYTHON3=1 \
	-t matthewfeickert/docker-python3-ubuntu:3.6.8 \
	--compress .
