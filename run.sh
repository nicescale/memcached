#!/bin/sh

. /etc/memcached/memcached.cfg &&
exec memcached -p $port -m $mlimit $allowlru -u $user -P $pidfile
