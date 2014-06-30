#!/bin/bash

docker run -d --env-file="memcached.cfg" nicescale/memcached
