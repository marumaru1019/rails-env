
# dbのスタート
docker-compose run --rm web rails db:create
docker-compose run --rm web rails db:migrate


# docker-compose run --rm web rails db:drops