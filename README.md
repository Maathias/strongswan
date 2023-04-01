### docker-compose.yml

```yml
version: '3'

services:
  strongswan:
    build: https://github.com/Maathias/strongswan.git
    image: strongswan
    privileged: true
    network_mode: host
    environment:
      PSK: pre shared key
      LEFT: source ip
      RIGHT: destination ip
    volumes:
      - ./ipsec.conf:/etc/ipsec.conf
```
