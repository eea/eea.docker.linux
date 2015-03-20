## Major Linux distributions

Docker files for major Linux distributions to be used with EEA Plone Add-ons related services (Jenkins, Plone WebSite, etc.)


### Base docker image

 [linux](https://registry.hub.docker.com/u/eeacms/linux/)

### Linux distributions

  - centos:7
  - debian:jessie
  - ubuntu:14.04

### Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://registry.hub.docker.com/u/eeacms/linux/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull eeacms/linux`

   (alternatively, you can build an image: `docker build -t="eeacms/linux" github.com/eea/eea.docker.linux`)


### Usage

Default image is ubuntu

    docker run -it --rm eeacms/linux cat /etc/issue

To run CentOS

    docker run -it --rm eeacms/linux:centos cat /etc/*release


### Extend

These images were created to be extended, thus within your Dockerfile:

    FROM eeacms/linux:debian
