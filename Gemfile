source "http://rubygems.org"


gem "rails", "3.2.14"

gemspec 

group 'test' do
  gem 'capybara'
  gem "factory_girl_rails"
  gem "sqlite3"
  gem "mocha"
  gem 'launchy'
  gem 'selenium-webdriver'
end

group 'development' do
  if RUBY_VERSION < '1.9'
    gem "ruby-debug", ">= 0.10.3"
  end
end
