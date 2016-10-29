#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "NStackSDK"
  s.version      = "0.4.3"
  s.summary      = "This is NStack."
  s.description  = <<-DESC
This is the cocoapod for NStack
                   DESC

  s.homepage     = "https://github.com/nodes-ios/NStackSDK"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"
  s.license          = 'MIT'
  s.author           = { "Nodes" => "nodesagency.com" }
  s.source           = { :git => "https://github.com/nodes-ios/NStack.git", :tag => s.version.to_s }
  s.platform     = :ios, '9.0'
  s.requires_arc = true
  s.source_files = 'NStackSDK/Classes/**/*.{swift,h}'
# s.resources        = ["Pods/Example.xib"]
#   s.resource_bundles = {
#     'Example' => ['Pods/**/*.xib']
# }
  s.dependency 'Alamofire', '~> 4.0'
  s.dependency 'Cashier'
  s.dependency 'Nodes'
  s.dependency 'Serializable'

end
