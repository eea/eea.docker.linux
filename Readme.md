## Major Linux distributions

Docker images for major Linux distributions created to be used with
EEA Plone Add-ons related services like: Jenkins, Plone WebSite, etc.

As these images are basically linux distributions with some extra libraries you
can obviously re-use them within your non-related EEA projects.


### Supported tags and respective Dockerfile links

  - eeacms/ubuntu `:latest`, `14s`, `:14.04`
  - eeacms/debian `:latest`, `:8s`, `:jessie`
  - eeacms/centos `:latest`, `:7s`, `:7`


### Base docker images

 - https://registry.hub.docker.com/u/eeacms/ubuntu/
 - https://registry.hub.docker.com/u/eeacms/debian/
 - https://registry.hub.docker.com/u/eeacms/centos/


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

    `docker pull eeacms/ubuntu`
    `docker pull eeacms/debian`
    `docker pull eeacms/centos`



### Usage

1. Ubuntu

    `docker run -it --rm eeacms/ubuntu cat /etc/issue`

2. CentOS

    `docker run -it --rm eeacms/centos cat /etc/*release`


### Extend

* These images were created to be extended, thus within your Dockerfile:

    `FROM eeacms/debian`
