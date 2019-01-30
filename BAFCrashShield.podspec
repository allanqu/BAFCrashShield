

Pod::Spec.new do |s|

  s.name         = "BAFCrashShield"
  s.version      = "0.0.6-beta1"
  s.summary      = "A short description of BAFCrashShield."

  s.description  = <<-DESC 
                      It is a killer for crash.You should know beta is a test version , publision version should not have beta.If you want to use ,
                      please download publision version.
                   DESC

  s.homepage     = "http://EXAMPLE/BAFCrashShield"


  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author       = { "quheng" => "quheng@babytree-inc.com" }

  s.source       = { :git => "https://github.com/allanqu/BAFCrashShield.git", :tag => "#{s.version}" }

  s.source_files  = "Classes/**/*.{h,m}"
  

  s.public_header_files = "Classes/**/BAFCrashConfig.h,Classes/**/BAFCrashManager.h,Classes/**/BAFCrashShield.h"

  # s.exclude_files = "Classes/Exclude"
  s.requires_arc = true

  s.platform     = :ios
  
  s.resources = "Resources/*"

  s.resource_bundles = {'Resources' => 'BAFCrashShield.framework/Resources/BAFCrashShield.bundle'}



end
