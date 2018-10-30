
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "config_gems_initialization_aim/version"

Gem::Specification.new do |spec|
  spec.name          = "config_gems_initialization_aim"
  spec.version       = ConfigGemsInitializationAim::VERSION
  spec.authors       = ["Maxim Kon0pelka"]
  spec.email         = ["tkach32max@gmail.com"]

  spec.summary       = "Inint some config"
  spec.description   = "Initialization configs for gem (example: rubocop)"
  spec.homepage      = "https://github.com/Kon0pelka/config_gems_initialization_aim.git"
  spec.license       = "MIT"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "overcommit"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "reek"
  spec.add_development_dependency "rubocop"
end
