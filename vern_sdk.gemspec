# frozen_string_literal: true

require_relative "lib/vern_sdk/version"

Gem::Specification.new do |s|
  s.name = "vern-sdk"
  s.version = VernSDK::VERSION
  s.summary = "Ruby library to access the Vern API"
  s.authors = ["Vern"]
  s.email = ""
  s.homepage = "https://gemdocs.org/gems/vern-sdk"
  s.metadata["homepage_uri"] = s.homepage
  s.metadata["source_code_uri"] = "https://github.com/vern-so/sdk-ruby"
  s.metadata["rubygems_mfa_required"] = false.to_s
  s.required_ruby_version = ">= 3.2.0"

  s.files = Dir[
    "lib/**/*.rb",
    "rbi/**/*.rbi",
    "sig/**/*.rbs",
    "manifest.yaml",
    "SECURITY.md",
    "CHANGELOG.md",
    ".ignore"
  ]
  s.extra_rdoc_files = ["README.md"]
  s.add_dependency "connection_pool"
end
