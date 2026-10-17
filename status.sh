#!/bin/bash

echo "<h1>Server Status</h1>" > status.html
echo "<p>$(date)</p>" >> status.html

echo "<p> nginx : $(systemctl is-active nginx)</p>" >> status.html
echo "<pre>" >> status.html 
df -h / >> status.html 
echo "</pre>" >> status.html 
cp ~/status.html /var/www/html/


