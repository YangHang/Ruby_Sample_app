source 'https://rubygems.org'

gem 'rails', '3.2.13'
gem 'faker','1.1.2'
gem 'will_paginate','3.0.4'
gem 'bootstrap-will_paginate','0.0.9'
# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'




# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end
gem 'bootstrap-sass'
gem 'jquery-rails'

# To use ActiveModel has_secure_password
 gem 'bcrypt-ruby', '3.0.1'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
group :production do
  gem 'pg','0.12.2'
end
group :development,:test do
  gem 'sqlite3','1.3.5'
  gem 'rspec-rails','2.11.0'
  gem 'guard-rspec','1.2.1'
  gem 'guard-spork'
  gem 'spork'
  gem 'annotate'
end
group :test do
  gem 'capybara','1.1.2'
  gem 'rb-fsevent','0.9.1',:require => false
  gem 'growl','1.0.3'
  gem 'factory_girl_rails','4.2.1'
end