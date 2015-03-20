FROM centos:7
MAINTAINER "Alin Voinea" <alin.voinea@eaudeweb.ro>

#
# Install
#
RUN \
  yum -y update && \
  yum -y install \
    curl \
    git \
    graphviz-devel \
    htop \
    ImageMagick \
    apr-util-devel \
    glibc-devel \
    curl-devel \
    libjpeg-turbo-devel \
    libjpeg-turbo \
    readline-devel \
    cyrus-sasl-devel \
    openssl-devel \
    subversion-devel \
    libxml2-devel \
    libxslt-devel \
    which \
    pdftk \
    poppler-utils \
    python-devel \
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
#    mstcore-fonts
#    liboboe
#    liboboe-dev
#    fontconfig
#    cronie

#
# Cleanup
#
RUN yum clean all

#
# Start
#
CMD ["bash"]
