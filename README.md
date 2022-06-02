# adnanh/webhook docker image

[adnanh/webhook](https://github.com/adnanh/webhook)

Forked from [almir/webhook](https://github.com/almir/docker-webhook)

## docker run
```
docker run -d -p 9000:9000 --name=webhook lufuhu/webhook:latest
```

## docker compose
```
version: "3"

services:

  webhook:
    image: lufuhu/webhook:latest
    container_name: webhook
    restart: always
    volumes:
      - ./hooks.json:/etc/webhook/hooks.json:ro
      - ./scripts:/etc/webhook/scripts/:rw
    ports:
      - "9000:9000"
```

## webhook url

http://yourserver:9000/hooks/redeploy-webhook
