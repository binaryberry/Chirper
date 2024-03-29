# Generated by cucumber-sinatra. (2014-09-13 16:15:11 +0100)

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', '..', 'app/chirper.rb')

require 'capybara'
require 'capybara/cucumber'
require 'rspec'

Capybara.app = Chirper

class ChirperWorld
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  ChirperWorld.new
end
