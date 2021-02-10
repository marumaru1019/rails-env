
# dbのスタート
docker-compose run --rm web rails db:create
docker-compose run --rm web rails db:migrate


# docker-compose run --rm web rails db:drops

docker-compose run app rails assets:precompile RAILS_ENV=production