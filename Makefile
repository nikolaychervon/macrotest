include .env

validatenv:
	@if [ "${DATABASE_HOST}" = "" ]; then echo "\033[0;31mERROR: PLS SET DATABASE_HOST"; exit 1; fi
	@if [ "${DATABASE_USER}" = "" ]; then echo "\033[0;31mERROR: PLS SET DATABASE_USER"; exit 1; fi
	@if [ "${DATABASE_PASS}" = "" ]; then echo "\033[0;31mERROR: PLS SET DATABASE_PASS"; exit 1; fi
	@if [ "${DATABASE_NAME}" = "" ]; then echo "\033[0;31mERROR: PLS SET DATABASE_NAME"; exit 1; fi
	@echo "\033[0;32mAll variables are set!";

init: validatenv
	docker-compose up --build -d

dump-db: validatenv
	cat ./docker/mysql/dump.sql | docker exec -i macro_mysql /usr/bin/mysql \
	-u ${DATABASE_USER} --password=${DATABASE_PASS} ${DATABASE_NAME}
