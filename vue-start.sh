
#
docker-compose run web yarn install --check-files

# webpackerのインストール
docker-compose run web bin/rails webpacker:install

# vueのインストール
docker-compose run web bin/rails webpacker:install:vue


