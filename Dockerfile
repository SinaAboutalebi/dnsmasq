FROM alpine:3.17

#Install Dnsmasq
RUN apk --no-cache add dnsmasq

#Maintener
LABEL maintainer "Zer0Power"

#Volumes
VOLUME /etc/dnsmasq
VOLUME /etc/hosts

#Expose Ports
EXPOSE 53 53/udp

#EntryPoint
ENTRYPOINT ["dnsmasq", "-k"]
