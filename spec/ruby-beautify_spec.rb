# one big spec (for now).
require 'minitest/autorun'
require 'digest/md5'

describe "Ruby Beautify" do
  before do
  	@good_md5_sum = '7bfa34ccccdf73f289588422320fc845'
  	@bad_file =  'spec/example.rb'
  	@bin = "#{Dir.pwd}/bin/ruby-beautify"
  end

	it "will blend." do
		md5_sum = Digest::MD5.hexdigest `#{@bin} #{@bad_file}`
    md5_sum.must_equal @good_md5_sum
	end
end
