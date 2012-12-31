source 'https://rubygems.org'

gem 'rails', '3.2.9'
gem 'jquery-rails'

# SSOProvider engine
gem 'sso_provider', git: 'git://github.com/XeeD/sso_provider.git'

# DB adapter
gem 'mysql2'

# Assets
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

# Development
group :development do
  gem 'capistrano-deploy', :require => false
  gem 'rvm-capistrano'
  gem 'sextant'
end

group :production do
  # JS runtime
  gem 'therubyracer', :platforms => :ruby
end