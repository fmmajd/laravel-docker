all: say_hello

say_hello:
	@echo "Hello World!"

up:
	@docker-compose up -d

down:
	@docker-compose down --remove-orphans

restart:
	@docker-compose down --remove-orphans
	@docker-compose up -d

bash:
	@docker-compose exec --user=1001 php bash

root_bash:
	@docker-compose exec php bash

permissions:
	@echo "Correcting all the permissions..."
	@docker-compose exec php php artisan cache:clear
	@docker-compose exec php chown -R www-data:www-data storage
	@docker-compose exec php chown -R www-data:www-data vendor
	@echo "Ownerships updated"
	@docker-compose exec php chmod -R 757 storage
	@docker-compose exec php chmod -R 757 vendor
	@echo "Permissions updated"

composer_install:
	@docker-compose run --rm composer composer install

composer_autoload:
	@docker-compose run --rm composer composer dump-autoload

phpcs:
	@docker-compose exec phpcs phpcs
