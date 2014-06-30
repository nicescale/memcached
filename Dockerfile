FROM        ubuntu
RUN         groupadd memcache -g 11211
RUN         useradd memcache -u 11211 -g memcache -M -d /nonexistent -s /bin/false
RUN         apt-get update
RUN         DEBIAN_FRONTEND=noninteractive apt-get -y install memcached
ADD         ./memcached.cfg /etc/memcached/memcached.cfg
ADD         . /opt/nicedocker
EXPOSE      11211
CMD         . /etc/memcached/memcached.cfg && /usr/bin/memcached -p $port -m $mlimit $allowlru -u $user -P $pidfile

