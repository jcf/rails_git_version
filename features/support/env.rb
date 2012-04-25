ENV['RAILS_ENV'] ||= 'test'
ENV['RAILS_ROOT'] ||= File.dirname(__FILE__) + '../../../spec/dummy'

require 'cucumber/rails'

Capybara.default_selector = :css
