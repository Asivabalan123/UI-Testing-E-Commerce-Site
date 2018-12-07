require'selenium-webdriver'
require 'rspec'
require 'faker'

require_relative '../your_logo'
require_relative '../lib/generating_data_random/faker'


RSpec.configure do |config|
  config.formatter = :documentation
end
