#!/bin/bash
set -e

# All subdomains will be tested at
# ${webroot-path}/.well-known/acme-challenge
certbot certonly --webroot --webroot-path /var/www/cirelli.org/html \
	--domains cirelli.org \
	--domains chittychat.cirelli.org \
	--domains forcegraph.cirelli.org \
	--domains ebidlocal.cirelli.org \
	--domains steve.cirelli.org \
	--domains mastodon.cirelli.org \
	--domains thita.cirelli.org \
	--domains athena.cirelli.org 

	#--domains *.cirelli.org \
                           #-w /home/pi/Projects/amazon.com/src -d amàzòn.com \
                           #-w /home/pi/Projects/amazon.com/src -d xn--amzn-1na3i.com
#                           -w /var/www/jen.cirelli.org/html -d thita.cirelli.org \
#                           -w /var/www/jen.cirelli.org/html -d jen.cirelli.org \
#			    -w /var/www/auction.ebidlocal.com.cirelli.org/html -d auction.ebidlocal.com.cirelli.org \
#                           -w /var/www/alexa.cirelli.org/html -d alexa.cirelli.org \
#                           -w /var/www/jupyter.cirelli.org/html -d jupyter.cirelli.org \
#                           -w /var/www/jen.cirelli.org/html -d jen.cirelli.org \
#                           -w /var/www/amiibo.nfc.cirelli.org/html -d amiibo.nfc.cirelli.org \
#                           -w /var/www/nfc.cirelli.org/html -d nfc.cirelli.org \
#                           -w /var/www/athena.cirelli.org/html -d athena.cirelli.org \

latest=`ls -d /etc/letsencrypt/live/cirelli.org-* | sort -r | head -n 1`
rm -f /etc/letsencrypt/live/cirelli.org
ln -s "$latest" /etc/letsencrypt/live/cirelli.org
