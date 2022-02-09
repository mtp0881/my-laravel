update:
	- git pull
	- docker-compose run php artisan config:cache
	- docker-compose run php migrate

remote-deploy:
	- ssh 34.146.13.248 'cd /home/maitrongphu/projects/my-laravel && make update'