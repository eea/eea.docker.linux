## CentOS distribution

Docker image for CentOS created to be used with EEA Plone Add-ons related
services like: Jenkins, Plone WebSite, etc.

As this image is basically CentOS with some extra libraries you
can obviously re-use it within your non-related EEA projects.


### Supported tags and respective Dockerfile links

  - `:latest` [*Dockerfile*](https://github.com/eea/eea.docker.linux/blob/master/centos/Dockerfile) (default)
  - `:7s` [*Dockerfile*](https://github.com/eea/eea.docker.linux/blob/slim/centos/Dockerfile)
  - `:7` [*Dockerfile*](https://github.com/eea/eea.docker.linux/blob/fat/centos/Dockerfile)


### Base docker image

 https://registry.hub.docker.com/u/eeacms/centos/

### Source code

  - http://github.com/eea/eea.docker.linux


### Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://registry.hub.docker.com/u/eeacms/linux/)
   from public [Docker Hub Registry](https://registry.hub.docker.com/):

   `docker pull eeacms/centos`

   alternatively, you can build an image:

   `docker build -t="eeacms/centos" github.com/eea/eea.docker.linux/centos`


### Usage

    $ docker run -it --rm eeacms/centos cat /etc/*release


### Extend

This image was created to be extended, thus, in order to create an Apache image
create a *requires.yum* file where you define system dependencies:

`$ tree /my-app`

```
  /my-app/
  |_ requires.yum
  |_ Dockerfile
  |_ Readme.md
```

`$ cat requires.yum`
```
  httpd
  mod_ldap
  mod_session
  mod_ssl
```

`$ cat Dockerfile`
```
  FROM eeacms/centos
  CMD ['apachectl -D FOREGROUND']
```
