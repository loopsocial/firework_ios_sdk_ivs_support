# FireworkVideo IVS Supporting Library

## About

A supporting library for the Amazon IVS SDK for use with FireworkVideo live stream playback. Using this library enables low latency live streaming.

## Amazon IVS SDK Documentation

This supporting library assumes basic familiarity with Amazon IVS. If needed, read over the IVS [User Guide](https://docs.aws.amazon.com/ivs/latest/userguide/player-ios.html) before diving in.

## FireworkVideo SDK Documentation

This supporting library is intended to be used alongside FireworkVideo SDK. Read over the [FireworkVideo SDK documentation](https://github.com/loopsocial/firework_ios_sdk#fireworkvideo) and [sample code](https://github.com/loopsocial/firework_ios_sdk/tree/main/FireworkVideoSample) to ensure smooth integration with IVS SDK.

Ensure your Firework content is configured and apply correct styling and/or layout before integrating the IVS supporting library. This will ensure your testing conditions will match your production environment.

## Setup

1. Add FireworkVideoSDK to your project; follow the [Firework Video installation instructions](https://github.com/loopsocial/firework_ios_sdk#readme).
2. Add FireworkVideoIVSSupport library to your project; follow the instructions [below](#installation).

### Installation

Swift Package Manager is the recommended way to install the FireworkVideo IVS Supporting Library.

We also support using Cocoapods to install this library.

CocoaPods trunk became read-only on December 2, 2026, so new versions of FireworkVideoIVSSupport are published to the [Firework specs repository](https://github.com/loopsocial/firework_ios_specs). Add it to the top of your Podfile together with the CocoaPods CDN:

```ruby
source 'https://github.com/loopsocial/firework_ios_specs.git'
source 'https://cdn.cocoapods.org/'
```

Keep the `cdn.cocoapods.org` line. Once a Podfile declares any `source`, CocoaPods no longer adds the CDN by default, and other dependencies such as `AmazonIVSPlayer`, as well as FireworkVideoIVSSupport versions released before December 2, 2026, are only available there.

Then add the library and run `pod install --repo-update`:

```ruby
pod 'FireworkVideoIVSSupport'
```

> Note: alternatively you can [download the binary](https://github.com/loopsocial/firework_ios_sdk_ivs_support/releases/latest) directly and install it manually.

## Using the SDK

Set up the SDK alongside FireworkVideo as soon as possible after app launch. See below code snippet.

```
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // First initialize the FireworkVideoSDK
        FireworkVideoSDK.initializeSDK()

        FireworkVideoSDK.enableIVSPlayback()

        return true
    }
```

FireworkVideo after both SDKs are initialized, FireworkVideo will make internal requests to the supporting library as determined by the Firework configuration for your App ID.
