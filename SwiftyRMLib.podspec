Pod::Spec.new do |spec|
  spec.name         = "SwiftyRMLib"
  spec.version      = "0.0.1"
  spec.summary      = "A CocoaPods library written in Swift"

  spec.description  = <<-DESC
This CocoaPods library helps call to api.
                   DESC

  spec.homepage     = "https://github.com/caroaz"
  spec.license       = "MIT"
  spec.author       = { "caroaz" => "carolinaazcurra8@gmail.com" }

  spec.ios.deployment_target = "15.0"
  spec.swift_version = "5.6"

  spec.source        = { :git => "https://github.com/caroaz/SwiftyRMLib.git", :tag => "#{spec.version}" }
  spec.source_files  = "SwiftyRMLib/**/*.{h,m,swift}"
  spec.dependency 'Alamofire'

end
