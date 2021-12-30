# README

## About ths project

This is the Flight Booker Project from The Odin Project's Ruby on Rails Course. You can see the full project here:

https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby-on-rails/lessons/flight-booker

This project uses Ruby on Rails and builds a typical checkout process for booking a one way flight with the exception of processing any payments.

## Functionality

Users enter in the details of the flight they’re looking for in a form. After running this filtered search for available flights, users select a flight, enter their booking information, and confirm their booking. 

This project utilizes some of the more advanced features of forms in Rails like nesting attributes for entering every passenger’s data on a single form.

Upon confirmation, they receive a confirmation email with Active Mailer. I used the Letter Opener Gem which opens the email in a new browser tab, rather than sending an actual email.

## Deployment

Deployed with Heroku. [See live](https://young-crag-49630.herokuapp.com/). 

## Get started

Clone the repo to your local machine:

`$ git clone https://github.com/jmorton138/rails_flight_booker`

Install all of the necessary gems:

`$ bundle install`

Migrate the database:

`$ rails db:migrate`

Sample data is located in the seed file. To use this data, run:

`$ rails db:seed`

To run this application on your local server run:

`$ bin/rails server`

View the application at:

`http://127.0.0.1:3000`
