#!/bin/bash
# Init a existing wordpress project

wp db create
wp core install --url=http://dev.local/$1 --title=NewSite --admin_user=chris --admin_password=azer1234 --admin_email=chris@toucandigitalpartner.com
