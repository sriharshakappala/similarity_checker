# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'similarity_checker/version'

Gem::Specification.new do |spec|
  spec.name          = "similarity_checker"
  spec.version       = SimilarityChecker::VERSION
  spec.authors       = ["Sri Harsha Kappala"]
  spec.email         = ["sriharsha.kappala@hotmail.com"]
  spec.summary       = %q{Pattern Matching & Similarity Index Calculator for Strings}
  spec.description   = %q{Takes two strings as an input and returns similarity index out of a range of 0 to 100}
  spec.homepage      = "https://github.com/sriharshakappala/similarity_checker"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
