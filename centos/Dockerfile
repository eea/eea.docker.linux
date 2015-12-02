FROM centos:7
MAINTAINER "Alin Voinea" <alin.voinea@eaudeweb.ro>

RUN \
  yum -y updateinfo && \
  yum -y install epel-release && \
  yum clean all

ADD install-dependencies.sh /bin/install-dependencies
ADD *.yum /etc/yum/
RUN install-dependencies /etc/yum/

ONBUILD COPY . /opt/app
ONBUILD RUN install-dependencies /opt/app

CMD ["bash"]
