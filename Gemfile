source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

gem 'rails', '~> 5.2.3'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.12'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'turbolinks', '~> 5'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'rails-ujs', '~> 0.1.0'
gem 'phantomjs', :require => 'phantomjs/poltergeist'
gem 'poltergeist'

gem 'jbuilder', '~> 2.5'
gem 'active_model_serializers'

gem 'webpacker', '~> 4.0.0'
gem 'tailwindcss', '~> 1.0.0'

gem 'bcrypt', '~> 3.1.7'
gem 'dotenv-rails'
gem 'pry'

# gem 'omniauth'
gem 'pagy'
gem 'erd'

gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'sqlite3'
end

group :development do

  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'capybara', '>= 2.15'

group :test do
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
