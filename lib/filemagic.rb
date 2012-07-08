module ErnieBrodeur
  # Add some basic filemagic types.
  class FileMagic
    def self.mime_type(file)
      if File.exist? file
        %x[file -bk --mime-type '#{file}'].chomp!
      else
        raise 'nosuchfile'
      end
    end
  end
  App.plugins.push 'filemagic'
end
