### Subscription Bot on Elixir (Phoenix)

> Example telegram bot via hooks

#### Get started with docker

##### [Install Docker Engine](https://docs.docker.com/engine/installation/)
##### [Install Docker Compose](https://docs.docker.com/compose/install/)

Let's develop inside docker containers.

```sh
docker-compose up --remove-orphans --build
```

Wait while build and open http://localhost:4000 .

#### Setup telegram hook

Run forwarding secure tunnel.

```sh
ngrok http 4000 (or ip:4000)
```

Setup webhook on https://*.ngrok.io.

```sh
curl https://api.telegram.org/bot{bot_token}/setWebhook?url=https://*.ngrok.io/api/hooks/telegram
```

Play in the telegram.
