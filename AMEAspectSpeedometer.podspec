#
# Be sure to run `pod lib lint AMEAspectSpeedometer.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "AMEAspectSpeedometer"
  s.version          = "0.1.0"
  s.summary          = "AMEAspectSpeedometer provide a solusion of velocity measurement in your application code."
  s.description      = <<-DESC
                       AMEAspectSpeedometer provide a solusion of velocity measurement in your application code.

                       to see README.md for more details [https://github.com/ainame/AMEAspectSpeedometer/blob/master/README.md](https://github.com/ainame/AMEAspectSpeedometer/blob/master/README.md)
                       DESC
  s.homepage         = "https://github.com/ainame/AMEAspectSpeedometer"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "ainame" => "s.namai.09@gmail.com" }
  s.source           = { :git => "https://github.com/ainame/AMEAspectSpeedometer.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  # s.resources = 'Pod/Assets/*.png'

  s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.dependency 'Aspects'
end
