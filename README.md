## More about the app
The basis of the application is a job board where anyone looking to get hired can come and apply for positions. If you are a user or company looking to post a job you can sign up for an account and do so for a fee. We use a combination of the Stripe API and the Stripe Ruby Gem to initialize a charge when a job gets posted.

## Stripe Integration
Stripe has a variety of solutions when it comes to accepting payments securely. There's really no wrong way to do so but some applications may favor alternative approaches. In this case I opted for Stripe Elements which is a drop in replacement that allows you to display a form for the credit card of which you can manipulate at will.

### Started off with a bunch of defaults for faster screencast setup.

Tested Rails Version gem 'rails', '~> 7.0.4.2'

Tested Ruby Versions ruby '3.1.2'


### Other installation requirements:

postgres. 

brew install postgresql. 

node. 

brew install nvm. 

nvm install node. 

echo 'export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] &&  
  "/opt/homebrew/opt/nvm/nvm.sh"' >> ~/.zshrc
  
### yarn
npm install --global yarn. 

rails gem. 

gem install rails. 

gem install rails. 
## Model

The main models we will utilize in this project are the User model and the Job model.

### Jobs

Each Job will house quite a few fields of which are imporant for any type of job listing online.

Each Job will feature the following:

Title - title:  

Description - description:text.  

Logo Avatar - via Carrierwave - avatar:string.   

Website URL - url:string.   

Type: Fulltime, Part-Time, Freelance, Contract job_type:string.    

Location - location:string.   

User ID - user_id:integer.    

Remote ok - remote_ok: boolean, default: false.   

apply_url - apply_url:string.   


### Each User will have:

Name - name:string

Email - email:string

Stripe ID - stripe_id:string

Card Type - card_type:string

Card Last 4 - card_last4:string

Card Exp Mo - card_exp_month:string

Card Exp Year - card_exp_year:string

Expires at - expires_at:datetime

Admin - admin:boolean

### Create a new rails application.  

rails new job-site. 

Run the app  

bin/rails server. 

### Run the Rails Application using Docker

host: localhost -> host: db

docker compose build

docker-compose run web rake db:create

docker compose up

View at: http://localhost:3000/
