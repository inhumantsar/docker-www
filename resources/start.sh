#!/bin/bash

# Make sure logdirs are available.
# Doing this here instead of the Dockerfile to allow for /var/log hostdir mounts
echo -e '\n ### Creating log directories...'
mkdir -p /var/log/{supervisord,httpd,php-fpm}
chown apache:apache /var/log/{supervisord,httpd,php-fpm}

### Start up script for momo/wwwa
echo -e '\n### Starting supervisord...'
supervisord -c /etc/supervisord.conf -n -l /var/log/supervisord/supervisord.log -q /var/log/supervisord/
