#!/bin/bash

DEPATH="$1"
if [ -z "$DEPATH" ]; then
  DEPATH="/"
fi

DEPENDENCIES=`find $DEPATH -name "*require*.apt" -exec cat {} \;`
if [ ! -z "$DEPENDENCIES" ]; then
  echo "Running apt-get -y --no-install-recommends install $DEPENDENCIES"
  apt-get update
  apt-get -y --no-install-recommends install $DEPENDENCIES
  rm -rf /var/lib/apt/lists/*
fi
