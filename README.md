<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/Zer0Power/dnsmasq">
    <img src="images/dnsmasq.png" alt="Logo" width="250" height="150">
  </a>

  <h3 align="center">Docker DNSMASQ</h3>

  <p align="center">
    dnsmasq service runing in  docker container
    <br />
    <br />
    <a href="https://github.com/Zer0Power/dnsmasq"><strong>Explore the docs »</strong></a>
    <br />
    <br />
        <img src="https://img.shields.io/docker/pulls/zer0power/dnsmasq.svg?style=flat-square&logo=docker&cacheSeconds=3600" width="130"> 
    <br />
    <br />
    <a href="https://github.com/Zer0Power/dnsmasq">View Demo</a>
    ·
    <a href="https://github.com/Zer0Power/dnsmasq/issues">Report Bug</a>
    ·
    <a href="https://github.com/Zer0Power/dnsmasq/issues">Request Feature</a>
    .
    <a href="https://hub.docker.com/r/zer0power/dnsmasq">Docker Page</a>
    </p>
</div>

<br />

<!-- GETTING STARTED -->
## Getting Started

To run your local dns server with your custom domain with dnsmasq in docker follow these simple steps.


### Installation

1. Pull the image.
   ```sh
   docker pull zer0power/dnsmasq
   ```
   <br />
2. Create and run the docker container, Change `YOUR-HOSTS-PATH` to your host list in my case is `/opt/docker/volumes/dnsmasq/list`, Change `YOUR-CONFIG-addn-hosts` to your config `addn-hosts` path in this case is `/opt/list`, Replace `YOUR-CONFIG-PATH` to your `dnsmasq.conf` path in your host.<br />
Note : create your host list before mounting volume , `exmp: touch /opt/docker/volumes/dnsmasq/list`
   ```sh
   docker run -itd --name dnsmasq --hostname dns -p 53:53/udp -v YOUR-HOSTS-PATH:YOUR-CONFIG-addn-hosts -v YOUR-CONFIG-PATH:/etc/dnsmasq.conf zer0power/dnsmasq
   ```
   <br />
   <b>Note : if you want to build image your self follow these steps then do step 2.</b>
   
3. Clone this repository.
   ```sh
   git clone https://github.com/Zer0Power/dnsmasq.git
   ```
4. Build image, Replace `IMAGE_NAME` with whatever you like and `IMAGE-TAG`.
   ```sh
   docker build -t IMAGE-NAME:IMAGE-TAG ./
   ```
   <br />
   <br />
   
## Configuration Example

To be able to run the dnsmasq, you will need a configuration file. This is a basic example.

```
#Log All DNS Quieries 
log-queries
log-async

#Define Host list
addn-hosts=/opt/list

#Set Cache
cache-size=10000

#Never Forward Plain Names
domain-needed 

#Prevent Forwarding Dns Reverse Queries To Upstream
bogus-priv

#Ignore /etc/resolv.conf
no-resolv

#Add Domain To HostNames
#expand-hosts

#Domain To Be Added If `expand-host` Is Set
#domain=zero.lan

#Local Domain To Be Served From Host List 
local=/zero.lan/

#Set Dns Resolvers 
server=8.8.8.8
server=1.1.1.1
server=8.8.4.4
```


   
