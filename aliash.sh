
alias new-app="docker-compose run web rails new . --force --database=postgresql"
alias dev="docker-compose build && docker-compose up"
alias new-db="docker-compose run web rake db:create db:migrate"
alias bash="docker exec -it catforproject-web-1 bash"
# rails generate controller RecipesController
# rails generate model RecipeService