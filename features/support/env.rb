ENV['RAILS_ENV'] ||= 'test'
ENV['RAILS_ROOT'] ||= File.dirname(__FILE__) + '../../../spec/dummy'

require 'simplecov'

require 'cucumber/rails'
require 'aruba/cucumber'

Capybara.default_selector = :css
