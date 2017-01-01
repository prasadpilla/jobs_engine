source 'https://rubygems.org'

gem 'rails', '4.2.7'

gem 'rails-api'

gem 'spring', :group => :development

gem 'pg'

gem 'devise_token_auth' #Token based authentication system
gem 'omniauth' #For third party auth, Facebook, Google etc
gem 'rack-cors', :require => 'rack/cors'


gem 'figaro'
gem 'puma'

group :development do
  gem 'capistrano'
  gem 'capistrano3-puma'
  gem 'capistrano-rails', require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano-rvm'
end

group :test do
  gem 'rspec-rails', '~> 3.5', '>= 3.5.1'
  gem 'shoulda-matchers', '~> 3.1'
  gem 'factory_girl_rails'
  gem 'simplecov', :require => false #Code coverage analysis tool, integrates with rspec
end

group :development, :test do
  gem 'byebug'
  gem 'pry'
  gem 'irbtools', require: 'irbtools/binding'
end