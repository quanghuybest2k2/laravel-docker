# laravel-docker

## Hướng dẫn cài đặt

Mở terminal và gõ các lệnh:

```shell
cp .env.example .env
```

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

CONTAINER ID là id của container đang chạy, sau khi gõ lệnh docker ps vừa rồi
ví dụ: docker exec -it 120737b4bed8 bash
Terminal sẽ chuyển sang wsl dạng:

```shell
cd /var/www/html
```

```shell
composer install
```

```shell
php artisan key:generate
```

## Truy cập địa chỉ:

http://localhost:9000/public

<!-- docker-compose exec app php artisan key:generate -->
