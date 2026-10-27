Pod::Spec.new do |s|
  s.name             = 'APIVervePlatinumPrice'
  s.version          = '1.2.3'
  s.summary          = 'Platinum Price retrieves real-time spot rates for platinum per troy ounce, gram, and kilogram.'
  s.description      = <<-'DESC'
Platinum Price retrieves real-time spot rates for platinum per troy ounce, gram, and kilogram. Each response reports prices in USD, 24-hour net price changes, direction markers, and update timestamps, with paid plans supporting 172 currencies.

This iOS/macOS SDK provides a convenient way to access the Platinum Price from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/platinumprice?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/platinumprice-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVervePlatinumPrice/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
