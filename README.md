# certbot_scripts
Some certbot scripts for lets encrypt.

Run `getCerts.sh` to update certs.

For some reason certbot has been creating a new folder with the new certs linked. Something like cirelli.org-0001. Move this to cirelli.org and restart nginx to pick up the new certs
