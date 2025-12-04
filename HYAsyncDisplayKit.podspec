#
# Be sure to run `pod lib lint HYAsyncDisplayKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |spec|
  spec.name         = 'HYAsyncDisplayKit'
  spec.version      = '0.3.3'
  spec.license      =  { :type => 'BSD' }
  spec.homepage     = 'https://github.com/huboceanLi/AsyncDisplayKit'
  spec.author           = { 'li437277219@gmail.com' => 'li437277219@gmail.com' }
  spec.summary      = 'Smooth asynchronous user interfaces for iOS apps.'
  spec.source       = { :git => 'https://github.com/huboceanLi/AsyncDisplayKit.git', :tag => spec.version.to_s }


  spec.weak_frameworks = 'Photos','MapKit','AssetsLibrary'
  spec.requires_arc = true

  spec.ios.deployment_target = '14.0'
  spec.static_framework = false
  # 用户目标配置
  spec.user_target_xcconfig = {
     'OTHER_LDFLAGS' => '-ObjC',
     'GCC_WARN_ABOUT_DEPRECATED_FUNCTIONS' => 'NO'
   }
   
  # Uncomment when fixed: issues with tvOS build for release 2.0
  # spec.tvos.deployment_target = '9.0'

  # Subspecs
  spec.source_files = 'HYAsyncDisplayKit/Classes/**/*'

  spec.libraries = 'c++', 'z' , 'stdc++'

#  spec.pod_target_xcconfig = {
#       'CLANG_CXX_LANGUAGE_STANDARD' => 'c++17',
#       'CLANG_CXX_LIBRARY' => 'libc++'
#  }

  # 对应 enable_modules = True, module_name = "AsyncDisplayKit"
  spec.pod_target_xcconfig = {
#    'DEFINES_MODULE' => 'YES',          # 启用模块
#    'CLANG_ENABLE_MODULES' => 'YES',    # 启用 Clang 模块
#    'CLANG_MODULES_AUTOLINK' => 'YES',  # 自动链接模块
    'PRODUCT_MODULE_NAME' => 'HYAsyncDisplayKit',  # 模块名称
    # 禁用所有废弃警告
    'GCC_WARN_ABOUT_DEPRECATED_FUNCTIONS' => 'NO',
    'CLANG_WARN_DEPRECATED_OBJC_IMPLEMENTATIONS' => 'NO',
    # 对应 copts = ["-Werror"]
    'GCC_TREAT_WARNINGS_AS_ERRORS' => 'NO',  # 将警告视为错误
# 禁用隐式 retain self 警告
  'CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF' => 'NO',
    # 对应 cxxopts = ["-Werror", "-std=c++17"]
    'CLANG_CXX_LANGUAGE_STANDARD' => 'c++17',
    'CLANG_CXX_LIBRARY' => 'libc++',
    'OTHER_CPLUSPLUSFLAGS' => '-std=c++17 -Werror -stdlib=libc++',
    
    # 对应 defines = ["MINIMAL_ASDK"]
    'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) MINIMAL_ASDK=1',
    
    # 头文件搜索路径
    'HEADER_SEARCH_PATHS' => [
      '"${PODS_ROOT}/HYAsyncDisplayKit/Source"',
      '"${PODS_ROOT}/HYAsyncDisplayKit/Source/PublicHeaders"'
    ].join(' ')
    
  }
  
  spec.frameworks = 'UIKit', 'Foundation', 'QuartzCore', 'CoreMedia', 'CoreText', 'CoreGraphics'
  spec.dependency 'HYUIKitRuntimeUtils', '1.0.3'

end
