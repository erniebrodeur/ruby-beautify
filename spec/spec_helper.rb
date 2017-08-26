require 'digest/md5'
require 'simplecov'

SimpleCov.start do
	add_filter '/spec/'
end

require 'ruby-beautify'


BEAUTIFY_BIN =  "#{Dir.pwd}/bin/ruby-beautify"
