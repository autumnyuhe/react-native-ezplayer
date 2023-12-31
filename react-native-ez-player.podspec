# react-native-ez-player.podspec

require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-ez-player"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  react-native-ez-player
                   DESC
  s.homepage     = "https://github.com/autumnyuhe/react-native-ez-player"
  # brief license entry:
  s.license      = "MIT"
  # optional - use expanded license entry instead:
  # s.license    = { :type => "MIT", :file => "LICENSE" }
  s.authors      = { "Your Name" => "autumnyuhe@email.com" }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/autumnyuhe/react-native-ez-player.git", :tag => "#{s.version}" }
  s.resource_bundles        = { "EZPlayerBundle" => ["ios/react-native-ezplayer/EZPlayer/*.xib"],
  "EZPlayerImageBundle" => ["ios/react-native-ezplayer/EZPlayer/image/*.png"]
  }
  s.resources = ["ios/react-native-ezplayer/EZPlayer/*xib"]

  s.source_files = "ios/**/*.{h,c,cc,cpp,m,mm,swift,xib,bundle,png}"
  s.requires_arc = true

  s.dependency "React"

  # s.static_framework = true
  # ...
  # s.dependency 
end

