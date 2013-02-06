source 'https://rubygems.org'

gem 'rails', '3.2.11'

gem 'haml'
gem 'jquery-rails'
gem 'sqlite3'
gem 'thin'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

group :development do
  gem 'guard'
  gem 'guard-bundler'
  gem 'rb-inotify', require: false
  gem 'rb-fsevent', require: false
  gem 'rb-fchange', require: false
  gem 'terminal-notifier-guard'
end

group :development, :test do
  gem 'guard-rspec'
  gem 'guard-spork'
  gem 'rspec-rails', '~> 2.0'
  gem 'spork', '~> 1.0rc'
end

