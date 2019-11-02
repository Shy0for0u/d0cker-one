FROM alpine

LABEL maintainer="dgorold-"

RUN		apk update && \
		apk upgrade && \
		apk add vim

ENTRYPOINT ["vim"]

#	README
#	docker rm -f $(docker ps -a)
#	docker build .
#	docker run --name test -ti <result of "Successfully built">
