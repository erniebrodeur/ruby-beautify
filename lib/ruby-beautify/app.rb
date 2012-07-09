# Some requires, they don't fit elsewhere.
require 'yajl'
require 'sys/proctable'
module RBeautify
  class Application
    attr_accessor :banner
    attr_accessor :long_description

    # return the name of the app, for now this is just the cmd ran, later it will be
    # something generated but more unique.
    def name
      $0.split("/").last
    end
  end

  App = RBeautify::Application.new
end
