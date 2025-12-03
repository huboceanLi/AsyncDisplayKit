#
# Be sure to run `pod lib lint HYAsyncDisplayKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HYAsyncDisplayKit'
  s.version          = '0.1.1'
  s.summary          = 'A short description of HYAsyncDisplayKit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/huboceanLi/AsyncDisplayKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'li437277219@gmail.com' => 'li437277219@gmail.com' }
  s.source           = { :git => 'https://github.com/huboceanLi/AsyncDisplayKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

    s.pod_target_xcconfig = {
      'CLANG_CXX_LANGUAGE_STANDARD' => 'c++17',
      'CLANG_CXX_LIBRARY'           => 'libc++'
    }

  s.ios.deployment_target = '10.0'

  s.source_files = 'HYAsyncDisplayKit/Classes/**/*'
  
  # s.resource_bundles = {
  #   'HYAsyncDisplayKit' => ['HYAsyncDisplayKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
    # s.frameworks = 'vector'
  # s.dependency 'AFNetworking', '~> 2.3'
end
