Pod::Spec.new do |s|
  s.name = "NanoidSwift"
  s.version = "1.0.0"
  s.license = { :type => "MIT", :file => "LICENSE" }

  s.summary = "Straight forward nanoid implementation for Swift."
  s.homepage = "https://github.com/benjohnde/NanoidSwift"

  s.authors = { "Ben John" => "github@benjohn.de" }
  s.social_media_url = "http://twitter.com/benjohnde"

  s.platform         = :ios, "9.0"
  s.swift_version    = "4.2"

  s.source           = { :git => "https://github.com/benjohnde/NanoidSwift.git", :tag => "#{s.version}" }

  s.source_files      = "Sources/**/*.{swift}"
  s.requires_arc = true
end
