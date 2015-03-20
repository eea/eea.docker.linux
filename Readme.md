## Major Linux distributions

Docker images for major Linux distributions created to be used with
EEA Plone Add-ons related services like: Jenkins, Plone WebSite, etc.

As these images are basically linux distributions with some extra libraries you
can obviously re-use them within your non-related EEA projects.


### Supported tags and respective Dockerfile links

  - eeacms/linux`:ubuntu`
  - eeacms/linux`:centos`
  - eeacms/linux`:debian`


### Base docker image

 - https://registry.hub.docker.com/u/eeacms/linux/


### Source code

  - http://github.com/eea/eea.docker.linux


### Based on linux distributions:

  - `centos:7`
  - `debian:jessie`
  - `ubuntu:14.04`


### Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://registry.hub.docker.com/u/eeacms/linux/)
   from public [Docker Hub Registry](https://registry.hub.docker.com/):

    `docker pull eeacms/linux`

   alternatively, you can build an image:

    `docker build -t="eeacms/linux" github.com/eea/eea.docker.linux`


### Usage

1. Default image is ubuntu

    `docker run -it --rm eeacms/linux cat /etc/issue`

2. To run CentOS

    `docker run -it --rm eeacms/linux:centos cat /etc/*release`


### Extend

* These images were created to be extended, thus within your Dockerfile:

    `FROM eeacms/linux:debian`
