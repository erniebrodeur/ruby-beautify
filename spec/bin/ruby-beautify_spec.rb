require 'spec_helper.rb'

describe "Ruby Beautify" do
	before (:all) do
		# a very quick to parse file, since this isn't to test the function of the parser (but the function of the binary).
		@small_file = 'spec/small_example.rb'
		@small_md5_sum = Digest::MD5.hexdigest File.read(@small_file)
		# should be the contents of the small file twice.
		@doubled_file = 'spec/doubled_example.rb'
		@doubled_md5_sum = Digest::MD5.hexdigest File.read(@doubled_file)

		@pretty_monolithic_md5_sum = Digest::MD5.hexdigest File.read('spec/usage_scenarios/monolithic_example_beautified.rb')
		@monolithic_file =  'spec/usage_scenarios/monolithic_example.rb'
	end

	it "will do multiple files" do
		md5_sum = Digest::MD5.hexdigest `bundle exec #{BEAUTIFY_BIN} #{@small_file} #{@small_file}`
		expect(md5_sum).to eq @doubled_md5_sum
	end

	# I want to make sure the file actually changes, so I do this (I could make yet another file).
	it "will update files (overwrite) in place" do
		FileUtils.cp @monolithic_file, "tmp/copied.rb"
		`bundle exec #{BEAUTIFY_BIN} --overwrite tmp/copied.rb`
		md5_sum = Digest::MD5.hexdigest File.read "tmp/copied.rb"
		expect(md5_sum).to eq @pretty_monolithic_md5_sum
	end

	it "will honor --tabs vs --spaces"
	it "will honor the count prefix"
end
