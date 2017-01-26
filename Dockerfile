#
FROM ubuntu:16.04

RUN apt-get update && \
    apt-get -y install vim git wget curl python && \
    echo ""

WORKDIR /app
COPY startup.sh .
RUN chmod +x startup.sh
CMD ["/app/startup.sh"]

