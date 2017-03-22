# README
[![Build Status](https://travis-ci.org/Petecass/shorty.svg?branch=master)](https://travis-ci.org/Petecass/shorty)
[![Dependency Status](https://gemnasium.com/badges/github.com/Petecass/shorty.svg)](https://gemnasium.com/github.com/Petecass/shorty)
[![Code Climate](https://codeclimate.com/github/Petecass/shorty/badges/gpa.svg)](https://codeclimate.com/github/Petecass/shorty)
[![Test Coverage](https://codeclimate.com/github/Petecass/shorty/badges/coverage.svg)](https://codeclimate.com/github/Petecass/shorty/coverage)
[![Issue Count](https://codeclimate.com/github/Petecass/shorty/badges/issue_count.svg)](https://codeclimate.com/github/Petecass/shorty)

This is a very basic URL shortening app. You can view a working example [here](https://immense-peak-65171.herokuapp.com/).

The app is based off my [Rails-base application](https://github.com/Petecass/rails-base) which acts as a starting point for any rails 5 application some it comes with authentication by default.



To setup the project. Clone the repo and run through the steps below. Note I have only ever tested these steps on a Mac. Setup on Windows may differ.

- `bundle install` to install all gems
- `bundle exec rails db:create` to create the database. note you will need to have Postgres installed on your machine.
- `bundle exec rails db:schema:load`
- `bundle exec rails s` to run the server
- you can also use guard `bundle exec guard` for automated testing and live reloading of assets.
- `bundle exec rspec spec` to run all specs.
- `bundle exec rake rubocop` to lint all your ruby code. You can also run `bundle exec rake rubocop:auto_correct` to.. yep you guessed it autocorrect your ruby code.
