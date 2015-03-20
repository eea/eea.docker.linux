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
  unzip \
  wget \
  wv \
  xpdf

#
## XXX Fix me
#
#    urw-fonts
#    liboboe
#    liboboe-dev
#    fontconfig
#    cronie

#
# Cleanup
#
RUN rm -rf /var/lib/apt/lists/*

#
# Start
#
CMD ["bash"]
