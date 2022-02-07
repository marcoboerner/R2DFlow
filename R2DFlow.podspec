#
# Be sure to run `pod lib lint R2DFlow.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'R2DFlow'
  s.version          = '0.2.4'
  s.summary          = 'A conceptual \'made for Swift and SwiftUI\' framework as an alternative to Redux/ReSwift\'s unidirectional data flow.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  The app follows a similar concept of unidirectional data flow as does Redux/ReSwift.
  However there is no store, and there are two different kind of actions. Workflow Actions that either trigger a Workflow (Similar to Middleware with side effects) and Reducer Actions, which trigger a reducer that then changes the state with pure functions.
  And a short-circuit that allows @Bindings to directly change the state.
                       DESC

  s.homepage         = 'https://github.com/marcoboerner/R2DFlow'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'marcoboerner' => 'mail@marcoboerner.com' }
  s.source           = { :git => 'https://github.com/marcoboerner/R2DFlow.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '13.0'
  s.swift_version = ['5.5', '5.6']

  s.source_files = 'Sources/R2DFlow/Classes/**/*'
  
  # s.resource_bundles = {
  #   'R2DFlow' => ['R2DFlow/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
