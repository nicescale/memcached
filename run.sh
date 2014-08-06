#!/bin/bash

. /etc/memcached/memcached.cfg
if [ "$allowlru" = "true" ]; then
  allowlru=
else
  allowlru="-M"
fi
exec memcached -p $port -m $mlimit $allowlru -u $user -P $pidfile
