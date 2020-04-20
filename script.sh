#!/bin/sh

git clone https://github.com/iredmail/iRedMail /home/$USER/mail

echo "you need to start \n
      vagrant ssh \n
      cd mail/ \n
      bash iRedMail.sh "
