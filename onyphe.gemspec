# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "onyphe/version"

Gem::Specification.new do |spec|
  spec.name          = "onyphe"
  spec.version       = Onyphe::VERSION
  spec.authors       = ["Manabu Niseki"]
  spec.email         = ["manabu.niseki@gmail.com"]

  spec.summary       = "ONYPHE API wrapper for Ruby"
  spec.description   = "ONYPHE API wrapper for Ruby"
  spec.homepage      = "https://github.com/ninoseki/onyphe-rb"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "addressable", "~> 2.5"
  spec.add_dependency "thor", "~> 0.19"

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "coveralls", "~> 0.8"
  spec.add_development_dependency "dotenv", "~> 2.5"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "vcr", "~> 4.0"
  spec.add_development_dependency "webmock", "~> 3.4"
end
