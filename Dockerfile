#First docker file implementation using Sample.sh


ARG version="18.04"
FROM ubuntu:$version
LABEL MAINTAINER abhi@oracle.com

RUN mkdir /code

COPY Sample.sh /code/Sample.sh

RUN chmod +x /code/Sample.sh

ENTRYPOINT ["sh","/code/Sample.sh"]
CMD ["/etc/host"]
