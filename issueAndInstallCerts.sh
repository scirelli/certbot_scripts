# Run these commands as root, logged in as root

# All subdomains will be tested at
# ${webroot-path}/.well-known/acme-challenge
acme.sh --issue \
	--domain cirelli.org \
	--domain ebidlocal.cirelli.org \
	--domain chittychat.cirelli.org \
	--domain forcegraph.cirelli.org \
	--domain mastodon.cirelli.org \
	--domain steve.cirelli.org \
	--domain thita.cirelli.org \
	--domain athena.cirelli.org \
	--domain anthony.cirelli.org \
	--webroot /var/www/cirelli.org/html

acme.sh --install-cert -d cirelli.org \
	--cert-file       /etc/nginx/ssl/cert.pem  \
	--key-file        /etc/nginx/ssl/key.pem \
	--fullchain-file  /etc/nginx/ssl/fullchain.pem \
	--reloadcmd     "service nginx force-reload"












# ---------------------------------------------------------------
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

#latest=`ls -d /etc/letsencrypt/live/cirelli.org-* | sort -r | head -n 1`
#rm -f /etc/letsencrypt/live/cirelli.org
#ln -s "$latest" /etc/letsencrypt/live/cirelli.org
#/etc/letsencrypt/live/cirelli.org/
