#!/bin/bash
set -e

certbot certonly --webroot -w /home/pi/Projects/amazon.com/src -d xn--amzn-1na3i.com
#-w /home/pi/Projects/amazon.com/src -d amàzòn.com \
#latest=`ls -d /etc/letsencrypt/live/xn--amzn-1na3i.com-* | sort -r | head -n 1`
#rm -f /etc/letsencrypt/live/xn--amzn-1na3i.com
#ln -s "$latest" /etc/letsencrypt/live/xn--amzn-1na3i.com
