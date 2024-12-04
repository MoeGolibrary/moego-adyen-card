require "json"
package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "moego-adyen-card"
  s.module_name  = "mogeoAdyenCard"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.authors      = package["author"]

  s.platform     = :ios, "13.4"
  s.source       = { :git => "https://github.com/MoeGolibrary/moego-adyen-card.git", :tag => "#{s.version}" }
  s.source_files = "ios/src/**/*.{h,m,swift}"

  s.dependency "React-Core"
  s.resource_bundles = { 'mogeoAdyenCard' => [ 'ios/PrivacyInfo.xcprivacy' ] }

  # s.dependency "Adyen"
  
  s.vendored_frameworks = [
    'ios/lib/Adyen.xcframework',
    'ios/lib/AdyenNetworking.xcframework',
  ]
  
  s.resource = [
    "ios/lib/Adyen.bundle",
    "ios/lib/AdyenActions.bundle",
    "ios/lib/AdyenCard.bundle"
  ]

  # s.dependency 'AdyenNetworking', '2.0.0'
  s.dependency 'Adyen3DS2', '2.4.2'

end
