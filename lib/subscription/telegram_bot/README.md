# Telegram Lpr Bot

## Local development

Run forwarding secure tunnel.

```sh
ngrok http 4000 (or ip:4000)
```

Setup webhook on https://*.ngrok.io.

```sh
curl https://api.telegram.org/bot{bot_token}/setWebhook?url=https://*.ngrok.io/api/hooks/telegram
```

Play in the telegram.
