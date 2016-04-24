# Objective
* Test the app's models with RSpec

# To run the tests
* `git clone https://github.com/contrepoint/rspec_testing`
* `cd rspec_testing`
* `bundle install` (Install all gems)
* `bundle exec rake db:create` (Create the database)
* `bundle exec rake db:migrate` (Migrate the database)
* `bundle exec rspec spec` (Will run all tests)
    * You should get `5 examples, 0 failures`

