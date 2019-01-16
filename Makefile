
php:
	php -S 127.0.0.1:8080 app/index.php

.PHONY: php

mercure:
	@cd mercure && \
	ALLOW_ANONYMOUS=1 \
	DEMO=1 \
	ADDR=':3000' \
	JWT_KEY='!UnsecureChangeMe!' \
	./mercure

.PHONY: mercure
