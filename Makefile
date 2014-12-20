PHP=$(shell which php)
CURL=$(shell which curl)
setup:
	$(CURL) -s http://getcomposer.org/installer | $(PHP)
	$(PHP) composer.phar install
test:
	$(PHP) vendor/phpunit/phpunit/phpunit --bootstrap ./vendor/autoload.php --colors ./tests

