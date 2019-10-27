source .env

docker run -d --restart=always --name dynu-client \
  -e DYN_HOSTNAME="${DYN_HOSTNAME}" \
  -e DYN_USER="${DYN_USER}" \
  -e DYN_PASS="${DYN_PASS}" \
  deliganli/dynu:latest