require_relative '../../test/test_helper'
require 'spinach-rails'

Spinach.hooks.before_scenario do |scenario_data|
  DatabaseCleaner.start
end
Spinach.hooks.after_scenario do |scenario_data|
  DatabaseCleaner.clean
end
