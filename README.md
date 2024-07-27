# laravel-docker

## Open project with VSCODE

### Open terminal and type:

```shell
docker-compose up -d --build
```

```shell
docker exec -it web bash
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

## Url:

##### Web app

http://localhost

#### PHPMYADMIN

http://localhost:82

#### username: huy

#### password: huy
