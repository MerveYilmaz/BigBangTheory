# README

This application fetches the serie "Big Bang Theory" and lists all movies ordered
by the release year.

This application is running with the ruby version 3.0.1 and rails 6.0.4.
For running it is necessary to:
  - install Bundler
  - than run bundle install
  - rake assets:precompile
  - yarn install --check-files
  - yarn add jquery
  - in one tab of terminal run: rails s
  - and in a other tab: ./bin/webpacker-dev-server
now you can open the Browser and add localhost:3000/serie as url.

This application contains a costom writen Gemfile for the needed gems.
Also a costomized scss app/assets/stylesheets/costom-variables-bootstrap-2021-06-25.scss
and series.scss for the view serie/index.html.erb.

The routes.rb is changed for the reaching of the view localhost:3000/serie

The main part is in the serie/index.html.erb, there is the script for fetching
the omdbapi.com API with a ajax call. It takes the result of the request and sortes
the movies at the release year. 
Than all needed informations are taken to show it in the view.

Things that could be changed:
  - split the script into a javascript file
  - maybe create a database for series and movies to order and view them faster

Used time for programming: 3h
              configuration: longer time, because of struggeling of the gems and jquery

Things you may want to cover:

* How to run the test suite


