# laravel-docker

## Hướng dẫn cài đặt

Mở terminal và gõ các lệnh:

```shell
docker-compose build --no-cache
```

```shell
docker-compose up -d
```

```shell
docker ps
```

```shell
docker exec -it <CONTAINER ID> bash
```

###### CONTAINER ID của laravel-docker-www

###### ví dụ: docker exec -it 8eea9907a013 bash

###### Terminal sẽ chuyển sang wsl dạng: root@8eea9907a013:/#

```shell
cd /var/www/html/example-app
```

```shell
cp .env.example .env
```

```shell
composer install
```

```shell
php artisan key:generate
```

```shell
php artisan migrate:fresh
```

## Truy cập địa chỉ:

http://localhost/example-app/public

<!-- docker-compose exec app php artisan key:generate -->
