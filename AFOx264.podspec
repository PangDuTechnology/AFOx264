Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.name         = "AFOx264"
  s.version      = "0.0.1"
  s.summary      = "x264."

  # This description is used to generate tags and improve search results.
  s.description  = 'x264 for iOS.'
  s.homepage     = "https://github.com/PangDuTechnology/AFOx264.git"
  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.license      = "MIT"
  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.author             = { "PangDu" => "xian312117@gmail.com" }
  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.platform     = :ios, "8.0"
  s.ios.deployment_target = '8.0'
  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.source       = { :git => "https://github.com/PangDuTechnology/AFOx264.git", :tag => s.version.to_s }
  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.source_files  = "contains/FFmpeg/include/**/*.h","contains/libxvidcore/include/xvid.h","contains/x264/include/*.h"
  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.header_mappings_dir = "contains/FFmpeg/include"
  s.preserve_paths = "contains/FFmpeg/**/**"
  s.vendored_libraries = "contains/FFmpeg/lib/libavcodec.a","contains/FFmpeg/lib/libavformat.a","contains/FFmpeg/lib/libavutil.a","contains/FFmpeg/lib/libswscale.a","contains/FFmpeg/lib/libswresample.a","contains/x264/lib/libx264.a","contains/libxvidcore/lib/libxvidcore.a"
  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.frameworks = ["CoreMedia", "AVFoundation","AudioToolbox","VideoToolbox"]
  s.libraries = ["c", "c++","z","iconv","bz2"]
  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
   s.requires_arc = true
   s.static_framework = true
   s.xcconfig = { 'HEADER_SEARCH_PATHS'=> '"$(SDKROOT)/contains/FFmpeg/include/**/*.h","$(SDKROOT)/contains/libxvidcore/include/*.h","$(SDKROOT)/contains/x264/include/*.h" ',
                  'LIBRARY_SEARCH_PATHS'=> '"$(SDKROOT)/contains/FFmpeg/lib"'
  }
end
