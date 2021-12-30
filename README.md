# README

## About ths project

This is the Flight Booker Project from The Odin Project's Ruby on Rails Course. You can see the full project here:

https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby-on-rails/lessons/flight-booker

This project uses Ruby on Rails and builds a typical checkout process for booking a one way flight with the exception of processing any payments.

## Functionality

Users enter in the details of the flight they’re looking for in a form. After running this filtered search for available flights, users select a flight from the search results, enter their booking information, and are directed to a confirmation page. 

Upon confirmation, they receive a confirmation email with Action Mailer. In development I used the Letter Opener gem to open the email content in a new window, without sending an actual email. This was really helpful for testing and learning how to use Action Mailer within the context of Rails forms. In production, I integrated the Twilio SendGrid add-on. Using the SendGrid API, the user receives a real confirmation email at the email address they enter into the form.

This project utilizes some of the more advanced features of forms in Rails like nesting attributes for entering every passenger’s data on a single form. Through this project I learned how to construct the more complex forms that are often needed in web applications that take user data.

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
