FROM centos:7
MAINTAINER "Alin Voinea" <alin.voinea@eaudeweb.ro>

RUN \
  rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7                 && \
  yum -y updateinfo                                                  && \
  yum -y install \
    yum-utils \
    epel-release \
    http://yumrepo.eea.europa.eu/centos/eea-release-1-0.1.noarch.rpm && \
    rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7                 && \
    rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-EEA                    && \
  yum clean all

ADD install-dependencies.sh /bin/install-dependencies
ADD *.yum /etc/yum/
RUN install-dependencies /etc/yum/

ONBUILD COPY . /opt/app
ONBUILD RUN install-dependencies /opt/app

CMD ["bash"]
