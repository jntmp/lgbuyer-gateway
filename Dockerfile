FROM alpine
WORKDIR /root

RUN apk --no-cache --update add openvpn squid curl

COPY squid.conf /etc/squid/squid.conf
COPY update-resolv-conf /etc/openvpn/update-resolv-conf
COPY entrypoint.sh ./

CMD ["sh", "-c", "./entrypoint.sh"]