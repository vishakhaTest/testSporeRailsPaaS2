source 'https://rubygems.org'

ruby '2.0.0'

gem 'rails', '>= 4.0.3'

# Use sqlite3 as the database for Active Record
gem 'sqlite3'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
# gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'
gem 'rails_config'
gem 'unicorn'
gem 'newrelic_rpm'

gem 'memoist'
gem 'sanitize'
gem 'redis-rails', '4.0.0'

gem 'git'
gem 'app-version', git: 'git@github.com:VodafoneAustralia/app-version-gem.git'
gem 'app-logging', git: 'git@github.com:VodafoneAustralia/app-logging-gem.git'

group :development, :test do
  gem 'pry'
  gem 'pry-nav'
  gem 'pry-stack_explorer'
  gem 'rspec-rails'
  gem 'teaspoon'
  gem 'webmock'

  gem 'guard-jasmine'
  gem 'guard-rspec'
  gem 'guard-cucumber'

  gem 'metric_fu'
  gem 'brakeman'

  gem 'jmeter-runner-gem', :git => 'git@github.com:VodafoneAustralia/jmeter-runner-gem.git', require: false
  gem 'ruby-jmeter', require: false

  gem 'jenkins_api_client', :git => 'git@github.com:VodafoneAustralia/jenkins_api_client.git'
  gem 'jenkins-branching', :git => 'git@github.com:VodafoneAustralia/jenkins-branching.git'
end

group :test do
  gem 'cucumber-rails', :require => false
  gem 'simplecov', :require => false
  gem 'simplecov-rcov', :require => false
end

group :cucumber do
  gem 'launchy'
  gem 'poltergeist', '~> 1.4.1'
  gem 'selenium-webdriver'
end

group :test, :cucumber do
  gem 'factory_girl', :require => false
  gem 'factory_girl_rails', :require => false
end

group :doc do
  gem 'sdoc', require: false
end
