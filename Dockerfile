FROM debian:jessie

MAINTAINER Mikael Alex

RUN DEBIAN_FRONTEND=noninteractive apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends netcat
RUN apt-get clean && rm -rf /var/cache/apt/* /var/lib/apt/lists/*
EXPOSE 8182 
COPY nc.sh /
COPY script.sh / 
RUN chmod a+x /nc.sh ; chmod a+x /script.sh
ENTRYPOINT ["/nc.sh"]
