# Sentry On-Premise

## Up and Running

1. `docker run --rm sentry config generate-secret-key` - Generate a secret key. Add it to .env as SENTRY_SECRET_KEY.
2. Run `docker-compose up -d`
3. Run `docker-compose exec sentry sentry upgrade` to setup database and create admin user
4. (Optional) Run `docker-compose exec sentry pip install sentry-slack` if you want slack plugin, it can be done later
5. Run `docker-compose restart sentry`
6. Sentry is now running on public port `9000`
