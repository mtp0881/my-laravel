update:
	- docker-compose run php artisan down
	- git pull
	- docker-compose run composer install
	- docker-compose run npm run install
	- docker-conpose run npm run prod
	- docker-compose run php artisan config:cache
	- docker-compose run php migrate
	- docker-compose run php artisan up

remote-deploy:
	- ssh 34.146.13.248 'cd /home/maitrongphu/projects/my-laravel && make update'