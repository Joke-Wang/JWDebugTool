#
# Be sure to run `pod lib lint JWDebugTool.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'JWDebugTool'
  s.version          = '0.1.1'
  s.summary          = 'JWDebugTool from LLDebugTool, delete some UIWebView class.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/Joke-Wang/JWDebugTool'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Joke-Wang' => 'wangzhangzhong1102@163.com' }
  s.source           = { :git => 'https://github.com/Joke-Wang/JWDebugTool.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'
  s.requires_arc        = true

  s.subspec 'Network' do |ss|
    ss.public_header_files      = "JWDebugTool/Core/Component/Network/**/*.h"
    ss.source_files             = "JWDebugTool/Core/Component/Network/**/*.{h,m}"
    ss.frameworks               = "SystemConfiguration", "CoreTelephony"
    ss.pod_target_xcconfig      = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'LLDEBUGTOOL_NETWORK=1'}
    ss.dependency                 "JWDebugTool/Storage"
 end

  s.subspec 'Log' do |ss|
    ss.public_header_files      = "JWDebugTool/Core/Component/Log/**/*.h"
    ss.source_files             = "JWDebugTool/Core/Component/Log/**/*.{h,m}"
    ss.pod_target_xcconfig      = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'LLDEBUGTOOL_LOG=1'}
    ss.dependency                 "JWDebugTool/Storage"
  end
  
  s.subspec 'Crash' do |ss|
    ss.public_header_files      = "JWDebugTool/Core/Component/Crash/**/*.h"
    ss.source_files             = "JWDebugTool/Core/Component/Crash/**/*.{h,m}"
    ss.pod_target_xcconfig      = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'LLDEBUGTOOL_CRASH=1'}
    ss.dependency                 "JWDebugTool/Storage"
  end

  s.subspec 'AppInfo' do |ss|
    ss.public_header_files      = "JWDebugTool/Core/Component/AppInfo/**/*.h"
    ss.source_files             = "JWDebugTool/Core/Component/AppInfo/**/*.{h,m}"
    ss.frameworks               = "SystemConfiguration"
    ss.pod_target_xcconfig      = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'LLDEBUGTOOL_APP_INFO=1'}
    ss.dependency                 "JWDebugTool/Core"
  end
  
  s.subspec 'Sandbox' do |ss|
    ss.public_header_files      = "JWDebugTool/Core/Component/Sandbox/**/*.h"
    ss.source_files             = "JWDebugTool/Core/Component/Sandbox/**/*.{h,m}"
    ss.frameworks               = "QuickLook", "WebKit", "AVKit"
    ss.pod_target_xcconfig      = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'LLDEBUGTOOL_SANDBOX=1'}
    ss.dependency                 "JWDebugTool/Core"
  end
  
  s.subspec 'Screenshot' do |ss|
    ss.public_header_files      = "JWDebugTool/Core/Component/Screenshot/**/*.h"
    ss.source_files             = "JWDebugTool/Core/Component/Screenshot/**/*.{h,m}"
    ss.frameworks               = "Photos"
    ss.pod_target_xcconfig      = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'LLDEBUGTOOL_SCREENSHOT=1'}
    ss.dependency                 "JWDebugTool/Core"
  end
  
  s.subspec 'Hierarchy' do |ss|
    ss.public_header_files      = "JWDebugTool/Core/Component/Hierarchy/**/*.h"
    ss.source_files             = "JWDebugTool/Core/Component/Hierarchy/**/*.{h,m}"
    ss.pod_target_xcconfig      = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'LLDEBUGTOOL_HIERARCHY=1'}
    ss.dependency                 "JWDebugTool/Core"
  end
  
  s.subspec 'Magnifier' do |ss|
    ss.public_header_files      = "JWDebugTool/Core/Component/Magnifier/**/*.h"
    ss.source_files             = "JWDebugTool/Core/Component/Magnifier/**/*.{h,m}"
    ss.pod_target_xcconfig      = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'LLDEBUGTOOL_MAGNIFIER=1'}
    ss.dependency                 "JWDebugTool/Core"
  end
  
  s.subspec 'Ruler' do |ss|
    ss.public_header_files      = "JWDebugTool/Core/Component/Ruler/**/*.h"
    ss.source_files             = "JWDebugTool/Core/Component/Ruler/**/*.{h,m}"
    ss.pod_target_xcconfig      = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'LLDEBUGTOOL_RULER=1'}
    ss.dependency                 "JWDebugTool/Core"
  end
  
  s.subspec 'WidgetBorder' do |ss|
    ss.public_header_files      = "JWDebugTool/Core/Component/WidgetBorder/**/*.h"
    ss.source_files             = "JWDebugTool/Core/Component/WidgetBorder/**/*.{h,m}"
    ss.pod_target_xcconfig      = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'LLDEBUGTOOL_WIDGET_BORDER=1'}
    ss.dependency                 "JWDebugTool/Core"
  end
  
  s.subspec 'Html' do |ss|
    ss.public_header_files      = "JWDebugTool/Core/Component/Html/**/*.h"
    ss.source_files             = "JWDebugTool/Core/Component/Html/**/*.{h,m}"
    ss.frameworks               = "WebKit"
    ss.pod_target_xcconfig      = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'LLDEBUGTOOL_HTML=1'}
    ss.dependency                 "JWDebugTool/Core"
  end
  
  s.subspec 'Location' do |ss|
    ss.public_header_files      = "JWDebugTool/Core/Component/Location/**/*.h"
    ss.source_files             = "JWDebugTool/Core/Component/Location/**/*.{h,m}"
    ss.frameworks               = "CoreLocation", "MapKit"
    ss.pod_target_xcconfig      = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'LLDEBUGTOOL_LOCATION=1'}
    ss.dependency                 "JWDebugTool/Core"
  end
  
  s.subspec 'ShortCut' do |ss|
    ss.public_header_files      = "JWDebugTool/Core/Component/ShortCut/**/*.h"
    ss.source_files             = "JWDebugTool/Core/Component/ShortCut/**/*.{h,m}"
    ss.pod_target_xcconfig      = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'LLDEBUGTOOL_SHORT_CUT=1'}
    ss.dependency                 "JWDebugTool/Core"
  end
  
  # Primary
  s.subspec 'Storage' do |ss|
    ss.public_header_files      = "JWDebugTool/Core/Storage/**/*.h"
    ss.source_files             = "JWDebugTool/Core/Storage/**/*.{h,m}"
    ss.dependency                 "JWDebugTool/Core"
    ss.dependency                 "FMDB", "~> 2.0"
  end
  
  # Primary
  s.subspec 'Core' do |ss|
    ss.public_header_files      = "JWDebugTool/LLDebug.h", "JWDebugTool/DebugTool/*.h", "JWDebugTool/Core/Others/**/*.h"
    ss.source_files             = "JWDebugTool/LLDebug.h", "JWDebugTool/DebugTool/*.{h,m}", "JWDebugTool/Core/Others/**/*.{h,m}"
    ss.resources                = "JWDebugTool/Core/Others/**/*.{xib,storyboard,bundle}"
  end
  
end
