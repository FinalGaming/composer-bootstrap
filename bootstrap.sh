#!/bin/bash

user="$USER"
prefix="ssh-"
username=${user#$prefix}
userdir=/www/htdocs/${username}
cd ${userdir}
mkdir bin
cd bin
curl -sS https://getcomposer.org/installer | php
echo "alias composer='${userdir}/bin/composer.phar'" >> ${userdir}/.user_bashrc
echo "export PATH='$PATH:~/.config/composer/vendor/bin'" >> ${userdir}/.user_bashrc
source /.bashrc
composer --version