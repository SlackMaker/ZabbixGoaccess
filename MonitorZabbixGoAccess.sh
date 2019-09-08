#!/bin/bash
grep "teste" /var/log/httpd/access_teste.log > /var/log/httpd/grep_teste.log
/usr/bin/goaccess -f /var/log/httpd/grep_teste.log -a > /scripts/report/report_teste.html
setfacl -R -m "u:apache:rwx,g:apache:rwx" /scripts/
