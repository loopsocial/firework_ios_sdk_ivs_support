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

We also support using Cocoapods to install this library. For example, add the following code snippet in the Podfile.

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
