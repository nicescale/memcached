#!/bin/sh

. /etc/memcached/memcached.cfg 
if [ "$allowlru" = "true" ]; then
  $allowlru="-M"
else
  $allowlru=
fi
exec memcached -p $port -m $mlimit $allowlru -u $user -P $pidfile
