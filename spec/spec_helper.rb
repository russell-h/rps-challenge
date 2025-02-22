require_relative '../app/rps_app.rb'
# require File.join(File.dirname(__FILE__), '..', 'rps_app.rb')

require 'capybara/rspec'
require 'simplecov'
require 'simplecov-console'
require 'rspec'

# tell Capybara about our app class
Capybara.app = RPSapp

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  # Want a nice code coverage website? Uncomment this next line!
  SimpleCov::Formatter::HTMLFormatter
])
SimpleCov.start

# For accurate test coverage measurements, require your code AFTER 'SimpleCov.start'

RSpec.configure do |config|
  config.after(:suite) do
    puts
    puts "\e[33mHave you considered running rubocop? It will help you improve your code!\e[0m"
    puts "\e[33mTry it now! Just run: rubocop\e[0m"
  end
end
