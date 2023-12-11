source 'https://rubygems.org'
ruby '3.0.2'

gem 'rails'

gem 'pg'

gem 'sprockets-rails'

gem 'mechanize'

gem 'puma'

gem 'feedjira'
gem 'responders'

gem 'rack-cors', :require => 'rack/cors'

gem 'numbers_in_words'

gem 'sanitize'

# cron jobs, works out of the box with with Capistrano
gem 'whenever'

group :assets do
  gem 'sass'
  gem 'sass-rails'
  gem 'coffee-rails'
end

group :development, :test do
  gem 'rspec-rails'
  gem 'rspec_api_test'
  gem 'factory_bot'
  gem 'factory_bot_rails'
  gem 'rubocop', require: false
end

group :development do
  gem 'capistrano'
  gem 'capistrano-bundler'
  gem 'capistrano-passenger'
  gem 'capistrano-rails'
  gem 'capistrano-rbenv'

  gem 'rubocop'
  gem 'spring'
end

group :production do
  gem 'rails_12factor'
end
