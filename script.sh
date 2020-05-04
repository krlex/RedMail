#!/bin/sh

git clone https://github.com/iredmail/iRedMail /srv/mail

echo "you need to start \n
      vagrant ssh \n
      cd /srv/mail/ \n
      bash iRedMail.sh "
