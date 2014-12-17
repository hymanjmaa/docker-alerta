#!/bin/bash

cat >/alertad.conf << EOF
DEBUG = True

SECRET_KEY = '$(< /dev/urandom tr -dc A-Za-z0-9_\!\@\#\$\%\^\&\*\(\)-+= | head -c 32)'
AUTH_REQUIRED = $AUTH_REQUIRED
OAUTH2_CLIENT_ID = '$CLIENT_ID'
ALLOWED_EMAIL_DOMAINS = ['$ALLOWED_EMAIL_DOMAIN']

PLUGINS = ['reject']
EOF