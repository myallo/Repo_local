#!/bin/bash


cp -pr /etc/httpd/conf/httpd.conf.online /etc/httpd/conf/httpd.conf
cp -pr /etc/httpd/conf.d/ssl.conf.online /etc/httpd/conf.d/ssl.conf

chmod 444 /etc/httpd/conf/httpd.conf /etc/httpd/conf.d/ssl.conf

echo

ls -ltr /etc/httpd/conf/httpd*|grep -v gz
echo
ls -ltr /etc/httpd/conf.d/ssl*|grep -v gz

echo -e "\n\n ONline pages have been set. Don't forget to load them with: \n\n\n ' graceful '   or use   $(tput setaf 1)' restart '  $(tput sgr0) $(tput smul)if server was previously rebooted\n\n"

