Pod::Spec.new do |s|
    s.name             = 'FireworkVideoIVSSupport'
    s.version          = '0.6.0'
    s.summary          = 'FireworkVideoIVSSupport'
  
    s.homepage         = 'https://github.com/loopsocial/firework_ios_sdk_ivs_support'
    s.license          = { :text => "Copyright 2023 Loop Now Technologies, Inc.", :type => "Copyright" }
    s.author           = "Loop Now Technologies, Inc."
    s.platform         = :ios, "12.0"
    s.module_name      = "FireworkVideoIVSSupport"
    s.source           = { :http => "https://github.com/loopsocial/firework_ios_sdk_ivs_support/releases/download/v#{s.version}/FireworkVideoIVSSupport-v#{s.version}.xcframework.zip" }
    s.swift_version    = '5.3'
  
    s.preserve_paths           = "FireworkVideoIVSSupport.xcframework"
    s.ios.vendored_frameworks  = "FireworkVideoIVSSupport.xcframework"
    s.cocoapods_version        = '>= 1.10.0'
  
    s.dependency 'AmazonIVSPlayer', '~> 1.8.3'
  
  end