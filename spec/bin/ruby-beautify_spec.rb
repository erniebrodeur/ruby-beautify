# one big spec (for now).
require 'spec_helper.rb'
require 'digest/md5'

# this is so simple, it's stupid.  I basically used the 'example.rb' file while
# testing this indenting method.  So I've visually approved of the output, and
# I've run that through md5.   Then we just run our build, gather that md5 and
# compare the two.
# Eventually, I should break out the code into smaller chunks so I can identify
# which component is breaking down.

describe "Ruby Beautify" do
  before (:all) do
    @good_md5_sum = Digest::MD5.hexdigest File.read('spec/example_beautified.rb')
  	@bad_file =  'spec/example.rb'
  	@bin = "#{Dir.pwd}/bin/ruby-beautify"
  end
  it 'will work' do
		md5_sum = Digest::MD5.hexdigest `bundle exec #{@bin} #{@bad_file}`
    expect(md5_sum).to eq @good_md5_sum
  end
end
