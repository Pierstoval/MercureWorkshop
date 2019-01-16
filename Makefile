
mercure:
	@cd mercure && \
	ALLOW_ANONYMOUS=1 \
	DEMO=1 \
	ADDR=':3000' \
	JWT_KEY='!UnsecureChangeMe!' \
	./mercure

.PHONY: mercure
