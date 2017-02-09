# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rewrite_httparty/version'

Gem::Specification.new do |spec|
  spec.name          = "rewrite_httparty"
  spec.version       = RewriteHttparty::VERSION
  spec.authors       = ["Dave Woodall"]
  spec.email         = ["dave@woodalls.me"]

  spec.summary       = %q{A rewrite of httparty}
  spec.description   = %q{If you are an aspiring musician, you play cover songs. If you are an aspiring coder, you rewrite popular, tested code.}
  spec.homepage      = "http://www.fakefarm.com"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version     = '>= 2.0.0'
  spec.add_dependency 'multi_xml', ">= 0.5.2"
  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
