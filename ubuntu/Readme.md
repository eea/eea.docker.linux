## Ubuntu distribution

Docker files for Ubuntu to be used with EEA Plone Add-ons related services (Jenkins, Plone WebSite, etc.)


### Base docker image

 [linux](https://registry.hub.docker.com/u/eeacms/linux/)


### Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://registry.hub.docker.com/u/eeacms/linux/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull eeacms/linux`

   (alternatively, you can build an image: `docker build -t="eeacms/linux" github.com/eea/eea.docker.linux/ubuntu`)


### Usage

    docker run -it --rm eeacms/linux:ubuntu cat /etc/issue


### Extend

This image was created to be extended, thus within your Dockerfile:

    FROM eeacms/linux:ubuntu
