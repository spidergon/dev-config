#!/bin/bash
# Set a new wordpress project

mkdir ../backups/$1
mkdir $1 && cd $1
wp core download
wp core config --dbname=$1 --dbuser=root --dbpass=root --dbhost=localhost --extra-php <<PHP
define( 'WP_DEBUG', true );
define( 'WP_DEBUG_LOG', true );
define( 'WP_DEBUG_DISPLAY', true );
PHP
wp db create
wp core install --url=http://dev.local/$1 --title=NewSite --admin_user=chris --admin_password=azer1234 --admin_email=chris@toucandigitalpartner.com
