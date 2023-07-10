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

rvm use 3.1.4
bundle install
yarn install
rails assets:precompile

bundle exec rails db:drop && bundle exec rails db:create && bundle exec rails db:migrate && bundle exec rails db:seed

