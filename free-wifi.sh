#!/bin/sh
url="https://wifi.free.fr/Auth"
login="LOGIN"
password="PASSWORD"
okmatch="CONNEXION AU SERVICE REUSSIE"

curl -s -F "login=${login}" -F "password=${password}" "${url}" | grep -q "${okmatch}" && echo "Connecté à FreeWifi"
