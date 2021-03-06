# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'class_cacher/version'

Gem::Specification.new do |spec|
  spec.name          = "class_cacher"
  spec.version       = ClassCacher::VERSION
  spec.authors       = ["Nicolai Seerup"]
  spec.email         = ["mail@soundtracktor.com"]
  spec.description   = %q{Generates a unique cache key Rails classes}
  spec.summary       = %q{What is a gem summary}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "sqlite3-ruby"
  spec.add_dependency "activerecord", ">= 3.2"
end
