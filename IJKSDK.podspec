
Pod::Spec.new do |s|
  s.name             = 'IJKSDK'
  s.version          = '0.1.0'
  s.summary          = 'IJKMediaPlayer'
  s.description      = '修改后的IJKMediaPlayer'

  s.homepage         = 'https://fijkplayer.befovy.com/docs/zh/replace-ijkplayer.html'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'seedmorn_gf' => 'yangfeng@liuliangwan.com' }
  s.source           = { :git => 'https://gitee.com/PodWareHouse/ijksdk.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'
  s.platform     = :ios, '10.0'
  s.static_framework = true

  s.source_files = 'IJKSDK/Classes/*.framework/Headers/**/*.h'
  s.vendored_frameworks = 'IJKSDK/Classes/*.framework'
  
  s.pod_target_xcconfig  = { 'ENABLE_BITCODE' => 'NO' }
  s.user_target_xcconfig = { 'ENABLE_BITCODE' => 'NO' }

  s.framework = 'AudioToolbox','AVFoundation','CoreGraphics','CoreMedia','CoreVideo','MediaPlayer','MobileCoreServices','OpenGLES','QuartzCore','UIKit','VideoToolbox'
  s.libraries = 'bz2', 'c++', 'z'
  
  s.pod_target_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'IJK_IOS=1' }
  
end
