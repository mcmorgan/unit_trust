# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'unit_trust/version'

Gem::Specification.new do |spec|
  spec.name          = "unit_trust"
  spec.version       = UnitTrust::VERSION
  spec.authors       = ["Marcel Morgan"]
  spec.email         = ["marcel.morgan@codedry.com"]

  spec.summary       = %q{Get rates offered by Unit Trusts}
  spec.description   = %q{Get rates offered by Unit Trusts for further comparison or future information}
  spec.homepage      = "https://github.com/mcmorgan/unit_trust"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
