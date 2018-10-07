source 'https://rubygems.org'

gem 'dotenv-rails', groups: [:development, :test]

ruby '2.3.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 4.2'
gem 'rake-version', '~> 1.0'
gem 'pg'

# Use SCSS for stylesheets
gem 'sass-rails'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
gem 'jquery-turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

gem 'twitter-bootstrap-rails'

gem 'friendly_id', '~> 5.0.0'
gem "recaptcha", require: "recaptcha/rails"
gem 'kaminari'
gem 'obscenity'
gem 'administrate', github: 'thoughtbot/administrate', branch: :master

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :production, :staging do
  gem 'heroku-deflater'
  gem 'rails_12factor'
end

group :test, :development do
  gem 'capybara'
end

group :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'database_cleaner'
end

group :development do
  gem 'web-console', '~> 2.0'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'pry'
  gem 'guard-livereload'
  gem 'spring'
  gem 'spring-commands-rspec'
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
