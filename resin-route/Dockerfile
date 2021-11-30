FROM resin/raspberrypi3-debian:latest

WORKDIR /usr/src/app
ENV INITSYSTEM on

RUN apt-get update && \
    apt-get install -yq --no-install-recommends \
          dnsmasq iptables


COPY wifi-to-eth-route.sh ./

CMD ["bash","wifi-to-eth-route.sh"]
