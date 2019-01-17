

Pod::Spec.new do |s|

  s.name         = "BAFCrashShield"
  s.version      = "0.0.1"
  s.summary      = "A short description of BAFCrashShield."

  s.description  = <<-DESC
                   DESC

  s.homepage     = "http://EXAMPLE/BAFCrashShield"


  s.license      = "MIT (example)"

  s.author             = { "quheng" => "quheng@babytree-inc.com" }

  s.source       = { :git => "http://EXAMPLE/BAFCrashShield.git", :tag => "#{s.version}" }

  s.source_files  = "Classes", "Classes/**/*.{h,m}"
  # s.exclude_files = "Classes/Exclude"



end
