## Debian distribution

Docker image for Debian created to be used with EEA Plone Add-ons related
services like: Jenkins, Plone WebSite, etc.

As this image is basically Debian with some extra libraries you
can obviously re-use it within your non-related EEA projects.

### Supported tags and respective Dockerfile links

  - eeacms/debian `:latest`, `:jessie`


### Base docker image

 - https://registry.hub.docker.com/u/eeacms/debian/


### Source code

  - http://github.com/eea/eea.docker.linux


### Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://registry.hub.docker.com/u/eeacms/linux/)
   from public [Docker Hub Registry](https://registry.hub.docker.com/):

   `docker pull eeacms/debian`

   alternatively, you can build an image:

   `docker build -t="eeacms/debian" github.com/eea/eea.docker.linux/debian`)


### Usage

    docker run -it --rm eeacms/debian cat /etc/debian_version


### Extend

This image was created to be extended, thus, in order to create an Apache image
create a *requires.apt* file where you define system dependencies:

`$ tree /my-app`

```
  /my-app/
  |_ requires.apt
  |_ Dockerfile
  |_ Readme.md
```

`$ cat requires.apt`
```
  apache2
  libapache2-mod-wsgi
  libapache2-mod-python
```

`$ cat Dockerfile`
```
  FROM eeacms/debian
  CMD ['apachectl -D FOREGROUND']
```
