A dns update client for Dynu

```bash
docker run -d --restart=always --name ddns \
  -e DYN_HOSTNAME="${DYN_HOSTNAME}" \
  -e DYN_USER="${DYN_USER}" \
  -e DYN_PASS="${DYN_PASS}" \
  deliganli/dynu:armv7
```

or 

```bash
version: "3"

services:
  ddns:
    container_name: ddns
    image: deliganli/dynu:armv7
    environment:
      - DYN_HOSTNAME=${DYN_HOSTNAME}
      - DYN_USER=${DYN_USER}
      - DYN_PASS=${DYN_PASS}
    restart: always

```