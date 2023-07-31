# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

Steps to take when cloning this repository

make sure you create an .env file with the environment variables


rvm use 3.1.4
bundle install
yarn install

rails assets:precompile

rails db:create && rails db:migrate && rails db:seed

rails s 

Tell Open AI to establish a readme template for ruby on rails prooject with instructions on installing and getting eberything to work

