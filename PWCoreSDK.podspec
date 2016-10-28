
Pod::Spec.new do |s|
  s.name         = "PWCoreSDK"
  s.version      = "1.0.0"
  s.summary      = "PWCoreSDK"
  s.description  = "Unified SDK for all paymentwall products on iOS"
  s.homepage     = "http://paymentwall.com"
  s.author       = { "tien.vu" => "kyle.vu@paymentwall.com" }
  s.platform     = :ios
  s.ios.deployment_target = '8.0'

  s.source       = { :git => "https://github.com/paymentwall/ios-sdk-core", :tag => 'PWCoreSDK-v'+String(s.version) }
  s.source_files = "PWCoreSDK", "PWCoreSDK/**/*.{h,m}", "Headers/*.h"
  s.resources    = "PWCoreSDK.bundle"
  s.vendored_libraries = "libPWCoreSDK.a"

  s.subspec 'Headers' do |h|
    h.source_files = 'PWCoreSDK/Headers/*.{h,m}'
  end

end
