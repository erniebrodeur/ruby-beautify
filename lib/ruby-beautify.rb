require 'open3'
require 'ruby-beautify/version'

module RubyBeautify
	extend self
	def syntax_ok?(string)
		out, err, status = Open3.capture3("ruby -c -", stdin_data:string )
		return false unless err.empty?
		return true
	end
end
