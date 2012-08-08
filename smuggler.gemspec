# -*- encoding: utf-8 -*-
require File.expand_path('../lib/smuggler/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Chris Hunt"]
  gem.email         = ["c@squareup.com"]
  gem.description   = %q{Smuggle ruby gems into the jvm}
  gem.summary       = %q{Smuggle ruby gems into the jvm by packaging them in jars.}
  gem.homepage      = "https://github.com/huntca/smuggler"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "smuggler"
  gem.require_paths = ["lib"]
  gem.version       = Smuggler::VERSION

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'
end
