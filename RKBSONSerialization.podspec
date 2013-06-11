Pod::Spec.new do |s|
  s.name         = "RKBSONSerialization"
  s.version      = "0.20.0"
  s.summary      = "A RestKit serialization format implementation for BSON using ObjCMongoDB."
  s.homepage     = "https://github.com/paulmelnikow/RKBSONSerialization"
  s.license      = { :type => 'Apache', :file => 'LICENSE'}
  s.author       = { "Paul Melnikow" => "email@paulmelnikow.com" }

  s.requires_arc = true
  s.ios.deployment_target = '5.0'
  s.osx.deployment_target = '10.7'
  
  s.source       = { :git => "https://github.com/RestKit/RKBSONSerialization.git" }
  s.source_files = '*.{h,m}'
  
  s.dependency 'RestKit', '>= 0.20.0dev'
#  s.dependency 'ObjCMongoDB', '>= 1.5pre'
end
