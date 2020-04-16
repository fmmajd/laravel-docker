# Laravel& Docker
A boilerplate for laravel projects done in docker. We include mariadb as database, composer as a separate service, phpcs for checking code style errors, swagger to document the api and rabbitmq as a queue system. Simply clone this repo and start developing.

## Versions 
Currently, we use php7.3, laravel 7, composer 1.10, mariadb10.5 and rabbitmq 3.8

## Make commands
`make up`: to up the docker service

`make down`: to down the docker services

`make restart`: docker-compose up and down without the use of docker-compose restart

`make bash`: to access bash of the php service as a normal user

`make root_bash`: to access bash of the php service as a root user

`make permissions`: corrects the prmissions of the filesystem, in case you encounter any errors

`make composer_install`: installs the dependencies

`make composer_autoload`: dump-autoloads the system

`make phpcs`: checks style errors
