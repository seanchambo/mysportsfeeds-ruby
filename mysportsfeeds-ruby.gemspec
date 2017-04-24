# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mysportsfeeds/version'

Gem::Specification.new do |spec|
  spec.name          = "mysportsfeeds"
  spec.version       = MySportsFeeds::VERSION
  spec.authors       = ["Sean Chamberlain"]
  spec.email         = ["seanlchamberlain@gmail.com"]

  spec.summary       = "MySportsFeeds.com API Wrapper"
  spec.description   = "MySportsFeeds.com API Wrapper"
  spec.homepage      = "https://github.com/seanchambo/mysportsfeeds-ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ["lib"]

  spec.add_dependency "typhoeus", "~> 1.1.2"
  spec.add_dependency "json", "~> 1.8"

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
