#Create and run rails Application on your local machine (Mac). Things you need to install:

postgres
brew install postgresql
node
brew install nvm
nvm install node
echo 'export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . 
  "/opt/homebrew/opt/nvm/nvm.sh"' >> ~/.zshrc
  
#yarn
npm install --global yarn
rails gem
gem install rails
Create a new rails application

#Setup db
brew services start postgresql
brew services stop postgresql

psql postgres
CREATE ROLE postgres WITH LOGIN SUPERUSER PASSWORD 'password';

Create the app
rails new . -d=postgresql

rails new Rails-Docker -d=postgresql
Configure database connection
Add these three line under default: &default (config/database.yml)

host: localhost
username: postgres
password: password
rails db:create
Run the app
bin/rails server
Run the Rails Application using Docker
host: localhost -> host: db

docker compose build
docker-compose run web rake db:create
docker compose up
View at: http://localhost:3000/
