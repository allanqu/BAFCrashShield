

Pod::Spec.new do |s|

  s.name         = "BAFCrashShield"
  s.version      = "0.0.5"
  s.summary      = "A short description of BAFCrashShield."

  s.description  = <<-DESC
                  It is a killer for crash.
                   DESC

  s.homepage     = "http://EXAMPLE/BAFCrashShield"


  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author       = { "quheng" => "quheng@babytree-inc.com" }

  s.source       = { :git => "https://github.com/allanqu/BAFCrashShield.git", :tag => "#{s.version}" }

  s.source_files  = "BAFCrashShield/**/*.{h,m}"
  # s.exclude_files = "Classes/Exclude"
  s.requires_arc = true

  s.platform     = :ios
  
   s.resources = "Resources/*"


end
