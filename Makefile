
IMAGE=vidarh/postfix
NAME=postfix
OPTS=-v /dev/log:/dev/log --name ${NAME} # -v ./valias:/etc/postfix/valias -v ./vmailbox:/etc/postfix/vmailbox


build-nocache:
	docker build --no-cache -t ${IMAGE} .

build: Dockerfile main.cf
	docker build -t ${IMAGE} .

runcli: build
	docker run --rm -t -i ${OPTS} ${IMAGE} /bin/sh

run: build
	docker run -t -i --rm ${OPTS} ${IMAGE}

push: build
	docker push ${IMAGE}
