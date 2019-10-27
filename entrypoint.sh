#!/bin/sh
set -e

DYN_HOSTNAME=${DYN_HOSTNAME:-""}
DYN_USER=${DYN_USER:-""}
DYN_PASS=${DYN_PASS:-""}
WAIT_TIME=${WAIT_TIME:-"10"}
GET_IP_SERVER=${GET_IP_SERVER:-"http://ipecho.net/plain"}

while true; do
  EXT_IP=${EXT_IP:-$(curl -s $GET_IP_SERVER)}
  echo "public IP: $EXT_IP"
  curl -s "https://api.dynu.com/nice/update?username=${DYN_USER}&password=${DYN_PASS}&hostname=${DYN_HOSTNAME}&myip=${EXT_IP}"
  echo
  sleep $WAIT_TIME
done