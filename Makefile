PORT ?= 8000
start:
	php -S 0.0.0.0:$(PORT) -t public

lint:
	composer exec --verbose phpcs -- --standard=PSR12 app tests

install:
	composer install