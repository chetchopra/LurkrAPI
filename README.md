# Lurkr API

## About
This is the Ruby on Rails Backend for a React Application. The main application provides users a dashboard view of all their favorite subreddits. 

The back-end simply manages user account details like what subreddits and settings the user has saved. It also functions as a wrapper for the reddit API. The Lurkr app only reqiured specific information about subreddits and their posts, so all other info has been filtered out. 

## Demo
The backend doesn't really need much of a demo but it will be hosted on heroku soon. In the meantime you can check out this demo video at 



## Usage 

1. Clone or fork the repo

2. Run `bundle install` ensure that you have atleast bundler 3 installed on your machine

3. Run `rails db:migrate` to start create the needed postgres database, run needed migrations. 

4. Run `rails db:seed` to seed the database with sample data. You can choose to add your own sample data, this can be done in the seeds.rb file located in the db folder. 

