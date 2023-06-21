# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.2'

gem 'bootsnap', require: false
gem 'devise'
gem 'active_link_to', '~> 1.0', '>= 1.0.5'
gem 'importmap-rails'
gem 'jbuilder'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'rails', '~> 7.0.5'
gem 'ransack'
gem 'redis', '~> 4.0'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'tailwindcss-rails'
gem 'kaminari'
gem 'turbo-rails'
gem 'aasm'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
gem 'mjml-rails'

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'ffaker'
  gem 'rspec-rails', '~> 6.0.0'
  gem 'shoulda-matchers', '~> 5.0'
end

group :development do
  gem 'web-console'
  gem 'letter_opener_web', '~> 2.0'
end

gem "dockerfile-rails", ">= 1.4", :group => :development
