FROM ubuntu:14.04
MAINTAINER "Alin Voinea" <alin.voinea@eaudeweb.ro>

#
# Install
#
RUN \
  apt-get update && \
  apt-get install -y \
  build-essential \
  curl \
  make \
  tar \
  fontconfig \
  git \
  graphviz \
  graphviz-dev \
  htop \
  ImageMagick \
  libaprutil1-dev \
  libc6-dev \
  libcurl4-openssl-dev \
  libjpeg-dev \
  libjpeg62 \
  libmemcached-dev \
  libpq-dev \
  libreadline-dev \
  libsasl2-dev \
  libssl-dev \
  libsvn-dev \
  libxml2-dev \
  libxslt-dev \
  libz-dev \
  pdftk \
  poppler-utils \
  python-dev \
  python-docutils \
  python-testtools \
  subversion \
  tex-gyre \
  unzip \
  wget \
  wv \
  xpdf

#
# Microsoft fonts
#
RUN sed -i 's|trusty main restricted|trusty main restricted multiverse|' /etc/apt/sources.list
RUN \
  apt-get update && \
  apt-get install -y \
    ttf-mscorefonts-installer

#
# Fix zlib path
#
RUN cd /lib && ln -s x86_64-linux-gnu/libz.so.1 libz.so

#
# Python 2.4
#
RUN \
  cd /tmp && \
  curl -o Python-2.4.6.tgz https://www.python.org/ftp/python/2.4.6/Python-2.4.6.tgz && \
  tar -zxvf Python-2.4.6.tgz && \
  cd Python-2.4.6 && \
  ./configure && \
  make && \
  make install

#
# Python 2.6
#
RUN \
  cd /tmp && \
  curl -o Python-2.6.9.tgz https://www.python.org/ftp/python/2.6.9/Python-2.6.9.tgz && \
  tar -zxvf Python-2.6.9.tgz && \
  cd Python-2.6.9 && \
  ./configure && \
  make && \
  make install

#
# Fix default python
#
RUN mv /usr/local/bin/python /usr/local/bin/python-2.6

#
# Cleanup
#
RUN rm -rf /var/lib/apt/lists/*
RUN rm -rf /tmp/Python*

#
# Start
#
CMD ["bash"]
