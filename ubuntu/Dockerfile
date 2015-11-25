FROM ubuntu:14.04
MAINTAINER "Alin Voinea" <alin.voinea@eaudeweb.ro>

#
# Install
#
RUN sed -i 's|trusty main restricted|trusty main restricted multiverse|' /etc/apt/sources.list

ADD install-dependencies.sh /bin/install-dependencies
ADD *.apt /etc/apt/
RUN install-dependencies /etc/apt/

ONBUILD ADD . /opt/app
ONBUILD RUN install-dependencies /opt/app

#
# Fix zlib path
#
RUN ln -s /lib/x86_64-linux-gnu/libz.so.1 /lib/libz.so

#
# Start
#
CMD ["bash"]
