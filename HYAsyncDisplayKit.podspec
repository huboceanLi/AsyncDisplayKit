#
# Be sure to run `pod lib lint HYAsyncDisplayKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HYAsyncDisplayKit'
  s.version          = '0.2.5'
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

  s.weak_frameworks = 'Photos','MapKit','AssetsLibrary'

  s.libraries = 'c++', 'stdc++'

# 完整的编译器配置
  s.pod_target_xcconfig = {
    # C++ 语言标准
    'CLANG_CXX_LANGUAGE_STANDARD' => 'gnu++14',
    'CLANG_CXX_LIBRARY' => 'libc++',
    
    # C++ 标志
    'OTHER_CPLUSPLUSFLAGS' => [
      '-std=gnu++14',
      '-stdlib=libc++',
      '-fcxx-modules',
      '-fmodules'
    ].join(' '),
    
    # C 标志
    'OTHER_CFLAGS' => [
      '-fmodules',
      '-fcxx-modules',
      '-Qunused-arguments'
    ].join(' '),
    
    # 启用 C++ 特性
    'GCC_ENABLE_CPP_EXCEPTIONS' => 'YES',
    'GCC_ENABLE_CPP_RTTI' => 'YES',
    
    # 头文件搜索路径 - 这是关键！
    'HEADER_SEARCH_PATHS' => [
      '"$(inherited)"',
      '"${PODS_ROOT}/HYAsyncDisplayKit"',
      '"${SDKROOT}/usr/include/c++/v1"',
      '"${SDKROOT}/usr/include"',
      '"${SDKROOT}/usr/lib/swift"',
      '"$(PLATFORM_DIR)/Developer/SDKs/$(PLATFORM_NAME).sdk/usr/include/c++/v1"',
      '"$(PLATFORM_DIR)/Developer/SDKs/$(PLATFORM_NAME).sdk/usr/include"'
    ].join(' '),
    
    # 系统框架搜索路径
    'FRAMEWORK_SEARCH_PATHS' => [
      '"$(inherited)"',
      '"$(PLATFORM_DIR)/Developer/Library/Frameworks"'
    ].join(' '),
    
    # 链接器标志
    'OTHER_LDFLAGS' => [
      '-ObjC',
      '-lc++',
      '-lstdc++',
      '-all_load'
    ].join(' '),
    
    # 模块配置
    'DEFINES_MODULE' => 'YES',
    'CLANG_ENABLE_MODULES' => 'YES',
    'CLANG_MODULES_AUTOLINK' => 'YES',
    
    # 禁用 header map
    'USE_HEADERMAP' => 'NO',
    
    # 架构设置
    'VALID_ARCHS' => 'arm64 arm64e armv7 armv7s x86_64',
    'ARCHS' => '$(ARCHS_STANDARD)',
    
    # 调试优化
    'GCC_OPTIMIZATION_LEVEL' => '0',
    'GCC_GENERATE_DEBUGGING_SYMBOLS' => 'YES'
  }
  
  # 源文件配置
  s.source_files = [
    'HYAsyncDisplayKit/**/*.{h,m,mm,c,cpp,cc,cxx}',
    'HYAsyncDisplayKit/**/*.{hpp,ipp,tpp}'
  ]
  
  # 排除不需要的文件
  s.exclude_files = [
    'HYAsyncDisplayKit/Info.plist',
    'HYAsyncDisplayKit/*.plist',
    '**/*Test*',
    '**/*Tests*',
    '**/*Demo*',
    '**/*Example*'
  ]
  s.ios.deployment_target = '14.0'
  s.requires_arc = true
  s.source_files = 'HYAsyncDisplayKit/Classes/**/*'

end
