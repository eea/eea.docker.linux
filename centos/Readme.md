## CentOs distribution

Docker images for CentOS created to be used with EEA Plone Add-ons related
services like: Jenkins, Plone WebSite, etc.

As this image is basically CentOS with some extra libraries you
can obviously re-use it within your non-related EEA projects.


### Supported tags and respective Dockerfile links

  - eeacms/linux`:centos`


### Base docker image

 https://registry.hub.docker.com/u/eeacms/linux/

### Source code

  - http://github.com/eea/eea.docker.linux


### Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://registry.hub.docker.com/u/eeacms/linux/)
   from public [Docker Hub Registry](https://registry.hub.docker.com/):

   `docker pull eeacms/linux`

   alternatively, you can build an image:

   `docker build -t="eeacms/linux" github.com/eea/eea.docker.linux/centos`


### Usage

    docker run -it --rm eeacms/linux:centos cat /etc/*release


### Extend

This image was created to be extended, thus within your Dockerfile:

    FROM eeacms/linux:centos
