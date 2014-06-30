memcached
=========

most popular cache 

Usage
-----

Launch your memcached like this:

  docker run -d -p 11211:11211 nicescale/memcached

And you can launch multiple memcached instances.


Configuration
-----

Edit memcached.cfg, modify memory or other, then:

  docker run -d -v $HOME/memcached.cfg:/etc/memcached/memcached.cfg nicescale/memcached
