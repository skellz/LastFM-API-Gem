# coding: utf-8
require 'last_ruby_fm/artist'

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'last_ruby_fm/version'

Gem::Specification.new do |spec|
  spec.name          = "last_ruby_fm"
  spec.version       = LastRubyFm::VERSION
  spec.authors       = ["Sherwin Kelly"]
  spec.email         = ["sherwin.kelly@gmail.com"]
  spec.summary       = %q{API wrapper for LastFM}
  spec.description   = %q{API Wrapper for LastFm using Faraday, VCR and RSpec}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'faraday'

  spec.add_development_dependency 'webmock'
  spec.add_development_dependency 'vcr'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
