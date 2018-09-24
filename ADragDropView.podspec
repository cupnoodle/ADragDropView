Pod::Spec.new do |s|
  s.name         = "ADragDropView"
  s.version      = "1.0.1"
  s.summary      = "Add a Drag and drop view (swift) for your macOS app easily"
  s.description  = <<-DESC
  Add a file drag and drop view (swift) to your macOS app easily, works with sandboxed app as well
                   DESC
  s.homepage     = "https://github.com/cupnoodle/ADragDropView"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = "Axel Kee"
  s.social_media_url   = "http://twitter.com/soulchildpls"
  s.swift_version = "4.1"
  s.platform = :macos, "10.12"
  s.source       = { :git => "https://github.com/cupnoodle/ADragDropView.git", :tag => s.version }
  s.source_files  = "ADragDropView/**/*.swift"
end
