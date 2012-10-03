source 'https://rubygems.org'

gem 'rails', '3.2.8'

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

gem 'jquery-rails'

gem 'comfortable_mexican_sofa'
gem 'comfy_gallery'

if ENV['LOCAL_GEMS'] == '1'
  gem 'qvitta_admin', path: '../qvitta_admin'
else
  gem 'qvitta_admin', git: 'https://github.com/qvitta/qvitta_admin.git', branch: 'develop'
end

gem 'draper'
gem 'cells'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'

group :production do
  gem 'pg'
end

group :development do
  gem 'sqlite3'
  gem 'guard-rspec'
  gem 'libnotify'
  gem 'rb-inotify'
  gem 'pry'
  gem 'pry-doc'
end

group :test do
  gem 'capybara'
end

group :test, :development do
  gem 'rspec-rails'
  gem 'rspec-cells'
  gem 'ffaker'
end
