require 'capybara/cucumber'
require 'capybara/poltergeist'

#Capybara.default_driver = :selenium
Capybara.register_driver :poltergeist do |app|
  Capybara::Poltergeist::Driver.new(app, :js_errors => false)
end
Capybara.default_driver = :poltergeist
#Capybara.javascript_driver = :webkit
