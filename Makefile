PHP=$(shell which php)
CURL=$(shell which curl)
setup:download
	$(PHP) composer.phar install
	./vendor/bin/testrunner compile -p vendor/autoload.php
download:
	$(CURL) -s http://getcomposer.org/installer | $(PHP)
test:
	$(PHP) vendor/bin/phpunit --bootstrap ./vendor/autoload.php --colors ./tests
testrunner:
	./testrunner.sh
