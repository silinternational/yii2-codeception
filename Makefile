it-now: clean install test

clean:
	docker-compose kill
	docker-compose rm -f

install:
	docker-compose run --rm cli bash -c "composer install"

depsupdate:
	docker-compose run --rm cli bash -c "composer update"

lint:
	docker-compose run --rm cli bash -c "php -l src/Codeception/TestCase/Test.php && php -l src/yii/test/ActiveFixture.php"
