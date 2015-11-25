FROM centos:7
MAINTAINER "Alin Voinea" <alin.voinea@eaudeweb.ro>

ADD install-dependencies.sh /bin/install-dependencies
ADD *.yum /etc/yum/
RUN install-dependencies /etc/yum/

ONBUILD ADD *.yum /opt/
ONBUILD RUN install-dependencies /opt/

CMD ["bash"]
