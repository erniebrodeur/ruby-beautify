require 'digest/md5'
require "codeclimate-test-reporter"
require 'ruby-beautify'
CodeClimate::TestReporter.start

BEAUTIFY_BIN =  "#{Dir.pwd}/bin/ruby-beautify"
