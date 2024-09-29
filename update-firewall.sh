#!/bin/bash

# Existierende UFW Regeln löschen
sudo ufw --force reset

# Alles für bestimmte IP-Adressen erlauben
ALLOWED_IPS=("185.223.30.25" "49.12.199.129" "49.13.145.225" "85.1.162.29")
for ip in "${ALLOWED_IPS[@]}"; do
    sudo ufw allow from $ip
done

# HTTP und HTTPS für alle erlauben
sudo ufw allow http
sudo ufw allow https

# UFW aktivieren
sudo ufw --force enable

# Status anzeigen
sudo ufw status verbose
