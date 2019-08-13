#!/bin/bash
set -e
if [ "$1" = 'python2' -a "$(id -u)" = '0' ]; then
    exec source /root/.bashrc # gosu for debian, su-exec for Alpine linux
fi
exec "$@"