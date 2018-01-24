require 'capybara/cucumber'
require 'capybara/dsl'
require_relative '../lib/codebar'

Capybara.register_driver :firefox do |app|
  Capybara::Selenium::Driver.new(app,:browser => :firefox)
end

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app,:browser => :chrome)
end

# Capybara.register_driver :selenium do |app|
#   browser = (ENV['browser'] || 'firefox').to_sym
#   Capybara::Selenium::Driver.new(app, :browser => browser)
# end

Capybara.configure do |config|
  config.ignore_hidden_elements = false #to ensure that all hidden elements on a page are recorded/available
  config.default_max_wait_time= 10 #wait time for asynchronus processes to finsh
  config.match = :prefer_exact #this setting is to ensure Capybara has specific matching rather than fuzzy logic
  config.default_driver = :chrome # ensures chrome is the default driver
  # config.default_driver = :firefox


end

World(CodebarSite)
