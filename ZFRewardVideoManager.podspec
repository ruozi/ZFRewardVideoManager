Pod::Spec.new do |s|

  s.name         = 'ZFRewardVideoManager'
  s.version      = '0.0.2'
  s.summary      = 'ZFRewardVideoManager integrates and dispatches mainstream leading reward video platform videos.'
  s.homepage     = 'https://github.com/ruozi/ZFRewardVideoManager'
  s.license      = 'MIT'
  s.author             = { 'ruozi' => 'wizardfan88@gmail.com' }
  s.ios.deployment_target = '8.0'
  s.source       = { :git => 'https://github.com/ruozi/ZFRewardVideoManager.git', :tag => s.version}

  s.default_subspec = 'Core'

  s.subspec 'Core' do |ss|

    ss.source_files = 'ZFRewardVideoManager/*.{h,m}', 'ZFRewardVideoManager/Utils/*.{h,m}', 'ZFRewardVideoManager/Mediator/*.{h,m}', 'ZFRewardVideoManager/Categories/*.{h,m}'
    ss.public_header_files = 'ZFRewardVideoManager/*.h'

  end

  s.subspec 'Vungle' do |ss|

    ss.dependency 'ZFRewardVideoManager/Core'
    ss.source_files = 'ZFRewardVideoManager/Utils/ZFCommon.{h,m}', 'ZFRewardVideoManager/Platforms/Vungle/*.{h,m}', 'ZFRewardVideoManager/Platforms/Vungle/Action/*.{h,m}'
    ss.dependency 'VungleSDK-iOS', '~> 3.2.2'

  end   

  s.subspec 'Appnext' do |ss|

    ss.dependency 'ZFRewardVideoManager/Core'
    ss.source_files = 'ZFRewardVideoManager/Platforms/Appnext/*.{h,m}', 'ZFRewardVideoManager/Platforms/Appnext/Action/*.{h,m}', 'ZFRewardVideoManager/Platforms/Appnext/AppnextIOSSDK/include/AppnextLib/*.h', 'ZFRewardVideoManager/Platforms/Appnext/AppnextIOSSDK/include/AppnextSDKCore/*.h' 
    ss.vendored_library = 'ZFRewardVideoManager/Platforms/Appnext/AppnextIOSSDK/libAppnextLib.a', 'ZFRewardVideoManager/Platforms/Appnext/AppnextIOSSDK/libAppnextSDKCore.a'
    ss.frameworks = 'AdSupport', 'AudioToolbox', 'AVFoundation', 'CFNetwork', 'CoreGraphics', 'CoreMedia', 'Foundation', 'MediaPlayer', 'QuartzCore', 'StoreKit', 'SystemConfiguration', 'UIKit', 'WebKit', 'Security', 'AVFoundation', 'MobileCoreServices', 'CoreTelephony'

  end   

  s.subspec 'Adcolony' do |ss|

    ss.dependency 'ZFRewardVideoManager/Core'
    ss.source_files = 'ZFRewardVideoManager/Platforms/Adcolony/*.{h,m}', 'ZFRewardVideoManager/Platforms/Adcolony/Action/*.{h,m}', 'ZFRewardVideoManager/Utils/ZFCommon.{h,m}'
    ss.dependency 'AdColony', '~> 3.0.5'

  end   

end
