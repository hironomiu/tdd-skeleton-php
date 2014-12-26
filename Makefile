PHP=$(shell which php)
CURL=$(shell which curl)
TESTRUNNER=$(shell which ./vendor/bin/testrunner)
download:
	$(CURL) -s http://getcomposer.org/installer | $(PHP)
setup:download
	$(PHP) composer.phar install
test:
	$(PHP) vendor/phpunit/phpunit/phpunit --bootstrap ./vendor/autoload.php --colors ./tests
