#!/bin/bash

./certbot-auto certonly --webroot -w /var/www/html/cirelli.org/html -d cirelli.org \
                                -w /var/www/html/alexa.cirelli.org/html -d alexa.cirelli.org \
                                -w /var/www/html/scirelli.com/html -d scirelli.com \
                                -w /var/www/html/athenacirelli.com/html -d athenacirelli.com \
                                -w /var/www/html/nlsdr.com/html -d nlsdr.com \
                                -w /var/www/html/jupyter.cirelli.org/html -d jupyter.cirelli.org

echo "-Congratulations! Your certificate and chain have been saved at /etc/letsencrypt/live/cirelli.org/fullchain.pem. Your cert will expire on 2017-02-25. To obtain a new or tweaked version of this certificate in the future, simply run certbot-auto again. To non-interactively renew *all* of your certificates, run 'certbot-auto renew' - If you like Certbot, please consider supporting our work by: "
echo "Donating to ISRG / Let's Encrypt:   https://letsencrypt.org/donate"
echo "Donating to EFF:                    https://eff.org/donate-le"
