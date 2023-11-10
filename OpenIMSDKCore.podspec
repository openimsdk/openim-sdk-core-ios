#
# Be sure to run `pod lib lint OpenIMSDKCore.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'OpenIMSDKCore'
  s.version          = '3.4.0'
  s.summary          = 'Open-IM-SDK-Core'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  OpenIM：由前微信技术专家打造的基于 Go 实现的即时通讯（IM）项目，iOS版本IM SDK 可以轻松替代第三方IM云服务，打造具备聊天、社交功能的app。
                       DESC

  s.homepage         = 'https://github.com/OpenIMSDK/Open-IM-SDK-iOS'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'OpenIMSDKCore' => 'https://github.com/std-s/Open-IM-SDK-Core' }
  s.source           = { :git => 'https://github.com/OpenIMSDK/openim-sdk-core-ios.git', :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'    
    
  valid_archs = ['armv7s','arm64','x86_64']
  s.xcconfig = {
    'VALID_ARCHS' =>  valid_archs.join(' '),
  }
  s.pod_target_xcconfig = {
      'ARCHS[sdk=iphonesimulator*]' => '$(ARCHS_STANDARD_64_BIT)'
  }
  
  s.vendored_frameworks = 'Framework/*.xcframework'
end
