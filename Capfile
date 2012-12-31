# Load RVM's capistrano plugin.
require 'capistrano-deploy'

# RVM support
set :rvm_type, :system
require "rvm/capistrano"

use_recipes :git, :bundle, :rails, :passenger, :rails_assets

server '109.123.216.26', :web, :app, :db, :primary => true

set :user, 'elvo'
set :deploy_to, '/srv/rails/elvo_auth'
set :current_path, deploy_to # for Sidekiq
set :repository, 'git@github.com:XeeD/elvo_auth.git'

after 'deploy:update', 'bundle:install'
after 'deploy:update', 'deploy:assets:precompile'
