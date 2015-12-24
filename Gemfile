source 'https://rubygems.org'

gem 'rails', '3.2.16'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

group :development, :test do
	gem 'sqlite3' # use SQLite only in development and testing
end

group :production do
	gem 'pg' # use PostgreSQL in production (Heroku)
	gem 'rails_12factor' # Heroku-specific production settings
end

gem "acts_as_follower", '~> 0.1.1'
# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

# To use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
gem 'strong_parameters'
gem 'annotate'
gem 'dynamic_form'
gem 'activeadmin'
gem "meta_search", '>= 1.1.0.pre'
gem 'jquery-rails', '~> 2.3.0'
gem 'carrierwave', github: 'satoruk/carrierwave', ref: '43179f94d6a4e62f69e812f5082d6447c9138480'
#use rmagick to zoom image
gem 'rmagick', require: false

#use thin to replace webbrick
gem 'thin'
gem 'letsrate', '1.0.8'
