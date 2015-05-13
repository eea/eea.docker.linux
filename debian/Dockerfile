FROM debian:jessie
MAINTAINER "Alin Voinea" <alin.voinea@eaudeweb.ro>

#
# Install
#
RUN \
  apt-get update && \
  apt-get install -y \
  build-essential \
  cron \
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
RUN sed -i 's|main|main contrib|' /etc/apt/sources.list
RUN \
  apt-get update && \
  apt-get install -y \
    ttf-mscorefonts-installer

#
# Cleanup
#
RUN rm -rf /var/lib/apt/lists/*

#
# Start
#
CMD ["bash"]
