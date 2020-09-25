Pod::Spec.new do |s|
  s.name         = "VideoTrimmerControl"
  s.version      = "1.0.1"
  s.summary      = "A VideoTrimmer for iOS"
  s.description  = <<-DESC
	A VideoTrimmer Control for iOS that supports trimming & scrubbing

	This VideoTrimmer Control for iOS allows the user to define how a video should be trimmed by dragging the side handles. When the user is trimming, pausing for a brief moment zooms in on the timeline to allow for greater precision. The timeline shows thumbnails of the video frames, based on AVAsset. Besides trimming, the control also optionallu allows the user to scrub through the video by tapping on the timeline.
                   DESC
  s.homepage     = "https://github.com/AndreasVerhoeven/VideoTrimmerControl"
  s.screenshots  = "https://user-images.githubusercontent.com/168214/94257068-09b8bd00-ff2b-11ea-836a-071299aac2b8.png", "https://user-images.githubusercontent.com/168214/94257056-058c9f80-ff2b-11ea-9592-3d4e5f5b44ff.png",
	  "https://user-images.githubusercontent.com/168214/94257066-08879000-ff2b-11ea-9d18-8d27a3931b83.png",
	  "https://user-images.githubusercontent.com/168214/94257129-1c32f680-ff2b-11ea-8938-25d5718a4faf.gif"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author            = "Andreas Verhoeven"
  s.social_media_url   = "http://twitter.com/aveapps"
  s.platform     = :ios, "13.0"
  s.source       = { :git => "https://github.com/AndreasVerhoeven/VideoTrimmerControl.git", :tag => "1.0.1" }
  s.source_files  = "VideoTrimmer.swift", "VideoTrimmerThumb.swift"
  s.exclude_files = "Example"
  s.requires_arc = true
  s.swift_versions = "5.2"
end
