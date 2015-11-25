#!/bin/bash

DEPATH="$1"
if [ -z "$DEPATH" ]; then
  DEPATH="/"
fi

DEPENDENCIES=`find $DEPATH -name "*require*.yum" -exec cat {} \;`
if [ ! -z "$DEPENDENCIES" ]; then
  echo "Running yum -y install $DEPENDENCIES"
  yum -y updateinfo
  yum -y install $DEPENDENCIES
  yum clean all
  rm -rf /var/tmp/*
fi
