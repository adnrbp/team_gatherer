source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.3'
# Storage
gem 'sqlite3'
# Deploy
gem 'puma', '~> 3.11'
# View
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'

# Others
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  # Debugging
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Unit Tests
  gem 'rspec-rails', '~> 3.5'
end

group :development do
  # Debugging
  gem 'web-console', '>= 3.3.0'
  # Auto-update
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # End to End
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
  # Factory
  gem 'factory_bot_rails', '~> 4.0'
  gem 'faker', '~> 1.9'
  # Matchers
  gem 'shoulda-matchers', '~> 3.1'
  # DB clean
  gem 'database_cleaner', '~> 1.7'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
