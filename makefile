update:
	- git pull
	- docker-compose run php artisan config:cache
	- docker-compose run php migrate