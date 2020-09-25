# VideoTrimmerControl
A VideoTrimmer Control for iOS that supports trimming & scrubbing

This VideoTrimmer Control for iOS allows the user to define how a video should be trimmed by dragging the side handles. When the user is trimming, pausing for a brief moment zooms in on the timeline to allow for greater precision.  The timeline shows thumbnails of the video frames, based on AVAsset.  Besides trimming, the control also optionallu allows the user to scrub through the video by tapping on the timeline.

## Screenshots

The control when not interacting:

<img src="https://user-images.githubusercontent.com/168214/94257068-09b8bd00-ff2b-11ea-836a-071299aac2b8.png" width="360" height="68" alt="VideoTrimmer Screenshot when not interacting">

The control when the user trimmed the leading and trailing parts:

<img src="https://user-images.githubusercontent.com/168214/94257062-07566300-ff2b-11ea-9cc8-07b80e6ac2d2.png" width="360" height="68" alt="VideoTrimmer Screenshot when trimmed">

The control when the user is trimming the leading part:

<img src="https://user-images.githubusercontent.com/168214/94257056-058c9f80-ff2b-11ea-9592-3d4e5f5b44ff.png" width="360" height="68" alt="VideoTrimmer Screenshot when trimming the leading part">

The control when the user has zoomed in on the timeline:

<img src="https://user-images.githubusercontent.com/168214/94257066-08879000-ff2b-11ea-9d18-8d27a3931b83.png" width="360" height="68" alt="VideoTrimmer Screenshot when zoomed in on the timeline">

## Animated GIF of the Control in Action
<img src="https://user-images.githubusercontent.com/168214/94281715-44cce780-ff4f-11ea-946e-5162cd26ada7.gif" width="202" height="425" alt="Animated GIF of the control in action">


## Configuration
 - `asset`: the asset to use for thumbnails. Setting this automatically updates the range and selectedRange properties
 - `videoComposition`: the AVVideoComposition to use (see AVFoundation)
 -  `minimumDuration`: the minimal duration that a video can be. The user can't trim a clip shorter than this
 -  `range`: the range of the asset to use
 - `selectedRange`: the range that is selected by the user. If nothing is trimmed, is equal to range.
 - `progressIndicatorMode`: defines how the progress indicator is shown `hiddenOnlyWhenTrimming`, `alwaysShown` or `alwaysHidden`
 - `progress`: the progress of the movie (e.g. current position when playing)
 - `horizontalInset`: the inset from the sides where the timeline and thumbs start. Defaults to `16`. (Allows for overshooting when zooming)
 - `trackBackgroundColor`: background color for the timeline track
 - `thumbRestColor`: background color for the timeline parts where there is no video, but the thumbs rest when not trimmed

## State Properties:
 - `trimmingState`: `none` if the user is not trimming, `leading` if they're trimming from the front, `trailing` if they're trimming from the end
 - `isZoomedIn`: true is the user zoomed in the timeline while trimming
 - `isScrubbing`: true if the user is scrubbing
 - `visibleRange`: the range that's currently displayed. Could be different from range when zoomed in
 - `selectedTime`: the time that's currently selected when trimming

## Gesture Recognizers
You can configure the following gesture recognizers to require failure of, for example, a UITableView's panGestureRecognizer:
 - `leadingGestureRecognizer`
 - `trailingGestureRecognizer`
 - `progressGestureRecognizer`
 - `thumbnailInteractionGestureRecognizer`

## Events:
 - `VideoTrimmer.didBeginTrimming`: fired when the user started trimming
 - `VideoTrimmer.didEndTrimming`: fired when the user stopped trimming
 - `VideoTrimmer.selectedRangeChanged`: fired when the `selectedRange` property changed because of the user trimming
 - `didBeginScrubbing`: fired when the user started scrubbing through the video
 - `didEndScrubbing`: fired whe nthe user ended scrubbing
 - `progressChanged`: fired when the `progress` property changed because of the user scrubbing
