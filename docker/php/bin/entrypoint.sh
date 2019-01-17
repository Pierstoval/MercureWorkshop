#!/bin/sh
set -e

uid=$(stat -c %u /srv)
gid=$(stat -c %g /srv)

if [ ${uid} == 0 ] && [ ${gid} == 0 ]; then
    if [ $# -eq 0 ]; then
        php-fpm
    else
        exec "$@"
        exit
    fi
fi

sed -i "s/user = www-data/user = foo/g" /usr/local/etc/php-fpm.d/www.conf
sed -i "s/group = www-data/group = foo/g" /usr/local/etc/php-fpm.d/www.conf
sed -i -r "s/foo:x:\d+:\d+:/foo:x:$uid:$gid:/g" /etc/passwd
sed -i -r "s/foo:x:\d+:/foo:x:$gid:/g" /etc/group
chown foo /home

if [ $# -eq 0 ]; then
    php-fpm
else
    exec su-exec foo "$@"
fi
