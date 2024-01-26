# Super easy containerized Caddy server with Docker Compose

This is basically [this](https://github.com/andrewheiss/ath-cloud-example), but way way simplified since it uses Caddy, and Caddy magically handles TLS with Let's Encrypt. So all the stuff I have in that first repository with certbot containers and cron jobs to renew certificates is unnecessary. Caddy makes it so incredibly easy to run everything.

Just run this and you'll be good to go:

```sh
docker compose -f docker/docker-compose.yml up -d
```
