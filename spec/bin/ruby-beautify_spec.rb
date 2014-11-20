# one big spec (for now).
require 'spec_helper.rb'
require 'digest/md5'

describe "Ruby Beautify" do
  before (:all) do
  	@good_md5_sum = '7bfa34ccccdf73f289588422320fc845'
  	@bad_file =  'spec/example.rb'
  	@bin = "#{Dir.pwd}/bin/ruby-beautify"
  end
  it 'will work' do
		md5_sum = Digest::MD5.hexdigest `bundle exec #{@bin} #{@bad_file}`
    expect(md5_sum).to eq @good_md5_sum
  end
end
