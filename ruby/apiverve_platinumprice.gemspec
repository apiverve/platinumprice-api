# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "apiverve_platinumprice"
  spec.version       = "1.2.3"
  spec.authors       = ["APIVerve"]
  spec.email         = ["hello@apiverve.com"]

  spec.summary       = "Platinum Price API - Ruby Client"
  spec.description   = "Platinum Price retrieves real-time spot rates for platinum per troy ounce, gram, and kilogram. Each response reports prices in USD, 24-hour net price changes, direction markers, and update timestamps, with paid plans supporting 172 currencies."
  spec.homepage      = "https://apiverve.com/marketplace/platinumprice?utm_source=ruby&utm_medium=referral&utm_content=homepage"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/apiverve/platinumprice-API/tree/main/ruby"
  spec.metadata["changelog_uri"] = "https://apiverve.com/changelog"
  spec.metadata["documentation_uri"] = "https://docs.apiverve.com/ref/platinumprice"

  spec.files = Dir.glob("{lib}/**/*") + %w[README.md LICENSE]
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", ">= 1.0", "< 3.0"
  spec.add_dependency "faraday-multipart", "~> 1.0"
  spec.add_dependency "json", "~> 2.0"
end
