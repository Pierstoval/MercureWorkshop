
install:
	cd app && \
	composer install

php:
	app/bin/console server:run 

.PHONY: php

mercure:
	@cd mercure && \
	ALLOW_ANONYMOUS=1 \
	DEMO=1 \
	CORS_ALLOWED_ORIGINS="*" \
	ADDR=':3000' \
	JWT_KEY='!UnsecureChangeMe!' \
	./mercure

.PHONY: mercure
