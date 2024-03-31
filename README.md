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
docker exec -it sample-project-202403-huy-www-1 bash
```

```shell
cp .env.example .env
```

```shell
composer install --ignore-platform-reqs
```

## if cause error, please run:

```shell
composer update --ignore-platform-reqs
```

## and then:

```shell
php artisan key:generate
```

```shell
php artisan migrate:fresh --seed
```

## Truy cập địa chỉ:

##### Web app

http://localhost

#### PHPMYADMIN

http://localhost:82

#### username: huy

#### password: huy
