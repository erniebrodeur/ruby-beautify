require File.expand_path('lib/ruby-beautify/version', __dir__)

Gem::Specification.new do |spec|
  spec.name        = 'ruby-beautify'
  spec.summary     = "a cli tool (and module) to beautify ruby code."
  spec.description = spec.summary
  spec.authors     = ["Ernie Brodeur"]
  spec.email       = ["ebrodeur@ujami.net"]
  spec.version     = RubyBeautify::VERSION

  spec.homepage    = "https://github.com/erniebrodeur/ruby-beautify"
  spec.license     = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/erniebrodeur/ruby-beautify"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
