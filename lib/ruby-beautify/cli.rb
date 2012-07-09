require 'optparse'

module RBeautify
  class OptBlob
    def initialize
      @options = {}

      @parser = OptionParser.new do |opts|
        opts.banner = App.banner

        opts.on("-V", "--version", "Print version") { |version| @options[:version] = true}
      end
    end

    #TODO figure out a more dynamic way to include the parser and hash table.
    def []=(key, value)
      @options[key] = value
    end

    def [](key)
      @options[key]
    end

    # This will build an on/off option with a default value set to false.
    def bool_on(word, description = "")
      Options[word.to_sym] = false
      @parser.on "-#{word.chars.first}", "--[no]#{word}", description  do |o|
        Options[word.to_sym] == o
      end
    end

    # This is the parser value on lifted up.
    def on(*opts, &block)
      @parser.on(*opts, &block)
    end

    def parse!
      @parser.banner = App.banner
      @parser.parse!

      if @options[:version]
        puts RBeautify::Version
        exit 0
      end
    end

    def on_pry
      if @options[:pry]
        require 'pry'
        binding.pry
      end
    end
  end

  Options = OptBlob.new
end
