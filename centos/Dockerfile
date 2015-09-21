FROM centos:7
MAINTAINER "Alin Voinea" <alin.voinea@eaudeweb.ro>

#
# Install
#
RUN \
  curl -k -o /tmp/msttcorefonts-2.5-1.noarch.rpm ftp://rpmfind.net/linux/sourceforge/r/re/repo-1c/RPMS/msttcorefonts-2.5-1.noarch.rpm && \
  curl -k -o /tmp/wkhtmltopdf-0.12.2.4.tgz http://eggrepo.apps.eea.europa.eu/pypi/wkhtmltopdf/wkhtmltopdf-0.12.2.4.tgz && \
  yum -y updateinfo && \
  yum -y install \
    make \
    tar \
    cronie \
    curl \
    fontconfig \
    gcc \
    gcc-c++ \
    ghostscript \
    git \
    graphviz-devel \
    htop \
    ImageMagick \
    apr-util-devel \
    glibc-devel \
    curl-devel \
    libjpeg-turbo-devel \
    libjpeg-turbo \
    libpng12 \
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
    xpdf \
    zlib-devel \
    /tmp/msttcorefonts-2.5-1.noarch.rpm && \
    tar -zxvf /tmp/wkhtmltopdf-0.12.2.4.tgz -C /usr/bin/ && \
    rm -f /tmp/msttcorefonts-2.5-1.noarch.rpm && \
    rm -f /tmp/wkhtmltopdf-0.12.2.4.tgz && \
    yum clean all

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
  make install && \
  rm -rf /tmp/Python*


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
  make install && \
  rm -rf /tmp/Python* && \
  mv /usr/local/bin/python /usr/local/bin/python-2.6 # Fix default python


#
# Start
#
CMD ["bash"]
