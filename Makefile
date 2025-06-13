.PHONY: composer-install npm-install install migrate dev build-dev

composer-install:
	docker compose run --rm app composer install

npm-install:
	docker compose run --rm node npm install

install:
	$(MAKE) composer-install
	$(MAKE) npm-install

migrate:
	docker compose run --rm migrate

dev:
	$(MAKE) migrate
	docker compose up -d app

SERVICE ?= app
REBUILD ?= false

build-dev:
ifeq ($(REBUILD),true)
	docker compose build --no-cache $(SERVICE)
else
	docker compose build $(SERVICE)
endif
