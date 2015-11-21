# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wirtschaftszweig/version'

Gem::Specification.new do |spec|
  spec.name          = "wirtschaftszweig"
  spec.version       = Wirtschaftszweig::VERSION
  spec.authors       = ["Tom Meiselbach"]
  spec.email         = ["hello@tmthn.de"]

  spec.summary       = %q{Find industries based on the european industry standard classification system, also known as NACE.}
  spec.description   = %q{Find industries based on the european industry standard classification system, also known as NACE.}
  spec.homepage      = "https://github.com/tmthn/wirtschaftszweig"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
