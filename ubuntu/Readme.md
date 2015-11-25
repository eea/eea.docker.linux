## Ubuntu distribution

Docker image for Ubuntu created to be used with EEA Plone Add-ons related
services like: Jenkins, Plone WebSite, etc.

As this image is basically Ubuntu with some extra libraries you
can obviously re-use it within your non-related EEA projects.


### Supported tags and respective Dockerfile links

  - `:latest` [*Dockerfile*](https://github.com/eea/eea.docker.linux/blob/master/ubuntu/Dockerfile) (default)
  - `:14s` [*Dockerfile*](https://github.com/eea/eea.docker.linux/blob/slim/ubuntu/Dockerfile)
  - `:14.04` [*Dockerfile*](https://github.com/eea/eea.docker.linux/blob/fat/ubuntu/Dockerfile)


### Base docker image

 - https://registry.hub.docker.com/u/eeacms/ubuntu/

### Source code

  - http://github.com/eea/eea.docker.linux


### Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://registry.hub.docker.com/u/eeacms/linux/)
   from public [Docker Hub Registry](https://registry.hub.docker.com/):

   `docker pull eeacms/ubuntu`

   (alternatively, you can build an image:

   `docker build -t="eeacms/linux" github.com/eea/eea.docker.linux/ubuntu`)


### Usage

    docker run -it --rm eeacms/ubuntu cat /etc/issue


### Extend

This image was created to be extended, thus within your Dockerfile:

    FROM eeacms/ubuntu
