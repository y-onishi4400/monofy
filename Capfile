require 'capistrano/setup'
require 'capistrano/deploy'
require 'capistrano/rbenv'
require 'capistrano/bundler'
require 'capistrano/rails'
require "capistrano/rails/assets"
require "capistrano/rails/migrations"
require 'capistrano/scm/git'
require 'capistrano3/unicorn'

install_plugin Capistrano::SCM::Git

# set :linked_files, %w[config/secrets.yml .env]
# Load custom tasks from `lib/capistrano/tasks` if you have any defined
Dir.glob("lib/capistrano/tasks/*.rb").each { |r| import r }
