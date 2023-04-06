FROM alpine:3.17

#Install Dnsmasq
RUN apk --no-cache add dnsmasq

#Maintener
LABLE maintainer "Zer0Power"

#Volumes
VOLUME /etc/dnsmasq.conf
VOLUME /etc/hosts

#EntryPoint
ENTRYPOINT ["dnsmasq", "-k"]
