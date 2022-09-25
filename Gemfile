source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

gem 'rails', '~> 6.0.0'
gem 'bcrypt', '~> 3.1.7'
gem 'faker'
gem 'carrierwave'
gem 'mini_magick'
gem 'will_paginate'
gem 'will_paginate-bootstrap'
gem 'puma', '~> 4.3'
gem 'sassc-rails'
gem 'webpacker'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'actiontext'
gem 'image_processing', '~> 1.12'
gem 'mysql2'
gem "rubyzip", ">= 1.3.0"
gem 'loofah', ">= 2.3.1"
gem "rack", "~> 2.1.4"
gem "excon", "~> 0.71.0"
group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'spring-commands-rspec'
  gem 'rubocop', require: false
  gem 'rubocop-rails'
end

group :development, :test do
  gem 'rspec-rails', '~> 3.8.0'
  gem 'factory_bot_rails', '~> 5.1.1'
  gem 'pry-rails'
  gem 'pry-byebug'
  gem 'pry-doc'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'webdrivers'
  gem 'rails-controller-testing'
end

group :production do
  gem 'pg', '0.20.0'
  gem 'fog','1.42'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
