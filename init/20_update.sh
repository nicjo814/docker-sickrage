#!/bin/bash
mkdir -p /app
chown abc:abc /app

if [ ! -d /app/sickrage/.git ]; then 
	/sbin/setuser abc git clone https://github.com/SickRage/SickRage.git /app/sickrage
else
	cd /app/sickrage
	/sbin/setuser abc git pull
fi
