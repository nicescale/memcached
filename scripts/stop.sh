#!/bin/bash

get_sid() {
  cdir=`dirname $0`
  cd $cdir/..
  tdir=`pwd`
  sid=`basename $tdir`
  echo $sid
}

sid=`get_sid`

if docker top $sid > /dev/null; then
  docker kill $sid
else
  echo service $sid no run.
fi
