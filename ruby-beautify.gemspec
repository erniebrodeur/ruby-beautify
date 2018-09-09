require File.expand_path('lib/ruby-beautify/version', __dir__)

Gem::Specification.new do |gem|
  gem.required_ruby_version = '>= 2.0'
  gem.name        = 'ruby-beautify'
  gem.summary     = "a cli tool (and module) to beautify ruby code."
  gem.description = gem.summary
  spec.date = Time.now.strftime('%Y-%m-%d')
  gem.authors     = ["Ernie Brodeur"]
  gem.email       = 'ebrodeur@ujami.net'
  gem.homepage    = "https://github.com/erniebrodeur/ruby-beautify"
  spec.platform = Gem::Platform::RUBY

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  gem.require_paths = ["lib"]
  gem.version       = RubyBeautify::VERSION

  spec.add_runtime_dependency 'creatable'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'guard'
  spec.add_development_dependency 'guard-bundler'
  spec.add_development_dependency 'guard-rspec'
  spec.add_development_dependency 'guard-rubocop'
  spec.add_development_dependency 'guard-yard'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'rubocop-rspec'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'simplecov-console'
  spec.add_development_dependency 'yard'
end
