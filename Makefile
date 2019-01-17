DOCKER_COMPOSE  = docker-compose

EXEC_PHP        = $(DOCKER_COMPOSE) exec php

SYMFONY         = $(EXEC_PHP) bin/console
COMPOSER        = $(EXEC_PHP) composer

# Used by the "console" script
cmd             = list

##
## Project
## -------
##

.DEFAULT_GOAL := help
help: ## Show this help message
help:
	@grep -E '(^[a-zA-Z_-]+:.*?##.*$$)|(^##)' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[32m%-20s\033[0m %s\n", $$1, $$2}' | sed -e 's/\[32m##/[33m/'
.PHONY: help

install: ## Install and start the project
install: build start vendor db
.PHONY: install

build: ## Build the Docker images
	$(DOCKER_COMPOSE) build --force-rm --compress
.PHONY: build

start: ## Start the project
	$(DOCKER_COMPOSE) up -d --remove-orphans --no-recreate
.PHONY: start

stop: ## Stop the project
	$(DOCKER_COMPOSE) stop
.PHONY: stop

reset: ## Stop and start a fresh install of the project
reset: clean install
.PHONY: reset

clean: ## Stop the project and remove generated files and configuration
clean: stop
	rm -rf vendor var/cache/* var/log/* var/sessions/*
.PHONY: clean

console: ## Executes the Symfony console. Command must be wrapped like this: make console cmd="cache:clear"
console:
	$(SYMFONY) ${cmd}

##
## Tools
## -----
##

cc: ## Clear and warmup PHP cache
	$(SYMFONY) cache:clear --no-warmup
	$(SYMFONY) cache:warmup

db: ## Reset the database
db:
	-$(SYMFONY) doctrine:database:drop --if-exists --force
	-$(SYMFONY) doctrine:database:create --if-not-exists
	-$(SYMFONY) doctrine:migrations:migrate --no-interaction
.PHONY: db

composer.lock: ## Update lockfile
composer.lock: composer.json
	$(COMPOSER) update --lock --no-scripts --no-interaction

vendor: ## Install PHP vendors
vendor: composer.lock
	$(COMPOSER) install
