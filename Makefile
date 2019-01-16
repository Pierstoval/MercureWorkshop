
php:
	php -S 127.0.0.1:8080 -t app/

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
