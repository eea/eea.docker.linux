FROM centos:7
MAINTAINER "Alin Voinea" <alin.voinea@eaudeweb.ro>

#
# Install
#
RUN \
  yum -y updateinfo && \
  yum -y install \
    make \
    tar \
    cronie \
    curl \
    fontconfig \
    gcc \
    gcc-c++ \
    git \
    graphviz-devel \
    htop \
    ImageMagick \
    apr-util-devel \
    glibc-devel \
    curl-devel \
    libjpeg-turbo-devel \
    libjpeg-turbo \
    libmemcached-devel \
    readline-devel \
    cyrus-sasl-devel \
    openssl-devel \
    subversion-devel \
    libxml2-devel \
    libxslt-devel \
    which \
    pdftk \
    poppler-utils \
    postgresql-devel \
    python-devel \
    python-docutils \
    python-test \
    python-testtools \
    subversion \
    unzip \
    urw-fonts \
    wget \
    wv \
    xpdf

#
# Microsoft fonts
#
RUN curl -o /tmp/msttcorefonts-2.5-1.noarch.rpm -k ftp://rpmfind.net/linux/sourceforge/r/re/repo-1c/RPMS/msttcorefonts-2.5-1.noarch.rpm
RUN yum -y install /tmp/msttcorefonts-2.5-1.noarch.rpm
RUN rm -f /tmp/msttcorefonts-2.5-1.noarch.rpm

#
# XXX Fix me. Install
#
# tex-gyre - TeX Gyre Pagella font
#

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
RUN yum clean all
RUN rm -rf /tmp/Python*

#
# Start
#
CMD ["bash"]
