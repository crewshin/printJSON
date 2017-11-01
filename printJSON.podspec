#
#  Be sure to run `pod spec lint printJSON.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "printJSON"
  s.version      = "0.0.1"
  s.summary      = "A print function that converts swift's native dictionary/array output from print with JSON"

  s.description  = <<-DESC
  A print function that converts swift's native dictionary/array output from print with proper JSON.
                   DESC

  s.homepage     = "https://github.com/crewshin/printJSON/blob/master/README.md"

  s.license      = { :type => "MIT", :file => "LICENSE" }

  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.author             = { "Gene Crucean" => "genecrucean@gmail.com" }
  s.social_media_url   = "http://twitter.com/GeneCrucean"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.ios.deployment_target = "10.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"

  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.source       = { :git => "https://github.com/crewshin/printJSON.git", :tag => "#{s.version}" }

  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.source_files  = "Classes/**/*"
  s.exclude_files = "Classes/Exclude"
  # s.public_header_files = "Classes/**/*.h"

  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  # s.requires_arc = true
  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end
