#
# Be sure to run `pod lib lint HYAsyncDisplayKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |spec|
  spec.name         = 'HYAsyncDisplayKit'
  spec.version      = '0.3.6'
  spec.license      = "MIT"
  spec.homepage     = 'https://github.com/huboceanLi/AsyncDisplayKit'
  spec.author           = { 'li437277219@gmail.com' => 'li437277219@gmail.com' }
  spec.summary      = 'Smooth asynchronous user interfaces for iOS apps.'
  spec.source       = { :git => 'https://github.com/huboceanLi/AsyncDisplayKit.git', :tag => spec.version.to_s }


  spec.requires_arc = true

  spec.ios.deployment_target = '14.0'

  spec.source_files  = "Source/*.{h,mm,m,swift}", "Source/PublicHeaders/*.h"
  spec.public_header_files = "Source/PublicHeaders/*.h"
  spec.private_header_files = "Source/*.h"
  spec.frameworks = "Foundation", "UIKit", "QuartzCore", "CoreMedia", "CoreText", "CoreGraphics"
    
  spec.dependency 'HYUIKitRuntimeUtils', '1.0.4'

end
