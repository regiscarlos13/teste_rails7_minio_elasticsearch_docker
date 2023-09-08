DOCKER := docker-compose

build:
	${DOCKER} build
up:
	${DOCKER} up
setup:
	${DOCKER} exec web bin/rails db:create db:migrate db:seed
start:
	@echo 'acesse pelo navegador = http://localhost:8001/'
down:
	${DOCKER} down
console:
	${DOCKER} exec web /bin/bash
test:
	rspec
reindex:
	${DOCKER} exec web rake searchkick:reindex:all