# frozen_string_literal: true

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "gcp_iap_warden/version"

Gem::Specification.new do |spec| # rubocop:disable Metrics/BlockLength
  spec.name          = "gcp_iap_warden"
  spec.version       = GcpIapWarden::VERSION
  spec.authors       = ["Max Shytikov"]
  spec.email         = ["mshytikov@gmail.com"]

  spec.summary       = "GCP Cloud IAP strategy for Warden"
  spec.description   = "GCP Cloud IAP strategy for Warden"

  # Prevent pushing this gem to RubyGems.org.
  # To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section
  # to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "jwt", "~> 2.1.0"
  spec.add_dependency "warden", "~> 1.2.0"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "pry", "~>  0.11.3"
  spec.add_development_dependency "rack-test", "~> 0.8.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rspec-its", "~> 1.2.0"
  spec.add_development_dependency "rspec-parameterized", "~> 0.4.0"
  spec.add_development_dependency "rubocop", "~> 0.52.0"
  spec.add_development_dependency "timecop", "~> 0.9.0"
  spec.add_development_dependency "vcr", "~> 4.0.0"
  spec.add_development_dependency "webmock", "~> 3.3.0"
end
