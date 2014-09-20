# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rake_on_rack/version'

Gem::Specification.new do |spec|
  spec.name          = "rake_on_rack"
  spec.version       = RakeOnRack::VERSION
  spec.authors       = ["Dan Arnould"]
  spec.email         = ["dan@arnould.co.uk"]
  spec.summary       = %q{Run Rake tasks via Rack}
  spec.description   = %q{The power of Rake, behind Rack}
  spec.homepage      = "http://github.com/darnould/rake_on_rack"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rspec", "~> 3.1"
  spec.add_development_dependency "pry"

  spec.add_runtime_dependency "rake", "~> 10.3"
  spec.add_runtime_dependency "rack", "~> 1.5"
  spec.add_runtime_dependency "thin"
end
