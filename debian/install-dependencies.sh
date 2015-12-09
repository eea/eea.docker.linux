#!/bin/bash

DEPATH="$1"
if [ -z "$DEPATH" ]; then
  DEPATH="/"
fi

DEPATHS=`find $DEPATH -name "*require*.apt"`
DEPENDENCIES=`for i in $DEPATHS; do cat $i; echo; done`

if [ ! -z "$DEPENDENCIES" ]; then
  echo "Running apt-get -y --no-install-recommends install $DEPENDENCIES"
  apt-get update
  apt-get -y --no-install-recommends install $DEPENDENCIES
  rm -rf /var/lib/apt/lists/*
fi
