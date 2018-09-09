require File.expand_path('lib/ruby-beautify/version', __dir__)

Gem::Specification.new do |gem|
  gem.name        = 'ruby-beautify'
  gem.summary     = "a cli tool (and module) to beautify ruby code."
  gem.description = gem.summary
  gem.date = Time.now.strftime('%Y-%m-%d')
  gem.authors     = ["Ernie Brodeur"]
  gem.email       = 'ebrodeur@ujami.net'
  gem.homepage    = "https://github.com/erniebrodeur/ruby-beautify"
  gem.platform = Gem::Platform::RUBY

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  gem.require_paths = ["lib"]
  gem.version       = RubyBeautify::VERSION

  gem.add_runtime_dependency 'creatable'

  gem.add_development_dependency 'bundler'
  gem.add_development_dependency 'guard'
  gem.add_development_dependency 'guard-bundler'
  gem.add_development_dependency 'guard-rspec'
  gem.add_development_dependency 'guard-rubocop'
  gem.add_development_dependency 'guard-yard'
  gem.add_development_dependency 'pry'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'rubocop'
  gem.add_development_dependency 'rubocop-rspec'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'simplecov-console'
  gem.add_development_dependency 'yard'
end
