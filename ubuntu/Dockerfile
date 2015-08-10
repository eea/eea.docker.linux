FROM ubuntu:14.04
MAINTAINER "Alin Voinea" <alin.voinea@eaudeweb.ro>

#
# Install
#
RUN \
  sed -i 's|trusty main restricted|trusty main restricted multiverse|' /etc/apt/sources.list && \
  curl -k -o /tmp/wkhtmltopdf-0.12.2.4.tgz http://eggrepo.apps.eea.europa.eu/pypi/wkhtmltopdf/wkhtmltopdf-0.12.2.4.tgz && \
  apt-get update && \
  apt-get -y --no-install-recommends install \
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
  libpng12-0 \
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
  xpdf \
  zlib1g-dev \
  ttf-mscorefonts-installer && \
  tar -zxvf /tmp/wkhtmltopdf-0.12.2.4.tgz -C /usr/bin/ && \
  rm -f /tmp/wkhtmltopdf-0.12.2.4.tgz && \
  rm -rf /var/lib/apt/lists/* && \
  ln -s /lib/x86_64-linux-gnu/libz.so.1 /lib/libz.so # Fix zlib path

#
# Python 2.4
#
RUN \
  cd /tmp && \
  curl -k -o Python-2.4.6.tgz https://www.python.org/ftp/python/2.4.6/Python-2.4.6.tgz && \
  tar -zxvf Python-2.4.6.tgz && \
  cd Python-2.4.6 && \
  ./configure && \
  make && \
  make install && \
  rm -rf /tmp/Python*

#
# Python 2.6
#
RUN \
  cd /tmp && \
  curl -k -o Python-2.6.9.tgz https://www.python.org/ftp/python/2.6.9/Python-2.6.9.tgz && \
  tar -zxvf Python-2.6.9.tgz && \
  cd Python-2.6.9 && \
  ./configure && \
  make && \
  make install && \
  rm -rf /tmp/Python* && \
  mv /usr/local/bin/python /usr/local/bin/python-2.6 # Fix default python

#
# Start
#
CMD ["bash"]
