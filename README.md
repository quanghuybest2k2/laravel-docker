# laravel-docker

## Hướng dẫn cài đặt

### Mở dự án bằng VSCODE

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
cd /var/www/html
```

```shell
cp .env.example .env
```

<!-- composer install -->

```shell
composer install --ignore-platform-reqs
```

```shell
php artisan key:generate
```

```shell
php artisan migrate:fresh
```

## Truy cập địa chỉ:

##### Web app

http://localhost

#### PHPMYADMIN

http://localhost:82

#### username: huy

#### password: huy

<!-- docker-compose exec app php artisan key:generate -->
