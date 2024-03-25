docker-compose run web rails new . --force --database=postgresql
docker-compose build
docker-compose run web rake db:create db:migrate
docker-compose up
