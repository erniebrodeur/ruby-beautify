require 'pry'
require 'simplecov'
require 'simplecov-console'

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter
]

RSpec.configure do |config|
  config.filter_run :focus
  config.run_all_when_everything_filtered = true
  config.example_status_persistence_file_path = "tmp/examples.txt"
end

SimpleCov.start do
  add_filter "/spec/"
end

require 'ruby_beautify'
