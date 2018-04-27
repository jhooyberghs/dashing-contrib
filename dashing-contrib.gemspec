# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dashing-contrib/version'

Gem::Specification.new do |spec|
  spec.name          = "dashing-contrib"
  spec.version       = DashingContrib::VERSION
  spec.authors       = ["Jing Dong"]
  spec.email         = ["me@jing.io"]
  spec.description   = %q{ Dashing Contrib aims to make templates plugins easy to maintain and contribute }
  spec.summary       = %q{ An extension to Dashing that makes easier to maintaining, sharing widgets and test common tasks }
  spec.homepage      = 'https://github.com/QubitProducts/dashing-contrib'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'dotenv', '~> 0.11.1'
  spec.add_dependency 'rest-client'
  spec.add_dependency 'multi_json', '~> 1.10'
  spec.add_dependency 'time_diff', '~> 0.3'
  spec.add_dependency 'sidekiq', '~> 3.0'
  spec.add_dependency 'activesupport', '~> 4.1'
  spec.add_dependency 'sinatra'
  spec.add_dependency 'smashing'
  spec.add_dependency 'nagiosharder'

  spec.add_development_dependency 'rake', '~> 0'
  spec.add_development_dependency 'rspec-core', '~> 3.4'
  spec.add_development_dependency 'rspec-expectations', '~> 3.4'
  spec.add_development_dependency 'rspec-mocks', '~> 3.4'
end
