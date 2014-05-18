# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth/steamv2/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-steamv2"
  spec.version       = OmniAuth::SteamV2::VERSION
  spec.authors       = ["William Holt"]
  spec.email         = ["william@toastedlabs.com"]
  spec.summary       = %q{Steam strategy for OmniAuth.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_runtime_dependency "omniauth-openid"
  spec.add_runtime_dependency "multi_json"
end
