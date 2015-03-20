## Debian distribution

Docker images for Debian created to be used with EEA Plone Add-ons related
services like: Jenkins, Plone WebSite, etc.

As this image is basically Debian with some extra libraries you
can obviously re-use it within your non-related EEA projects.

### Supported tags and respective Dockerfile links

  - eeacms/linux`:debian`


### Base docker image

 - https://registry.hub.docker.com/u/eeacms/linux/


### Source code

  - http://github.com/eea/eea.docker.linux


### Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://registry.hub.docker.com/u/eeacms/linux/)
   from public [Docker Hub Registry](https://registry.hub.docker.com/):

   `docker pull eeacms/linux`

   alternatively, you can build an image:

   `docker build -t="eeacms/linux:debian" github.com/eea/eea.docker.linux/debian`)


### Usage

    docker run -it --rm eeacms/linux:debian cat /etc/debian_version


### Extend

This image was created to be extended, thus within your Dockerfile:

    FROM eeacms/linux:debian
