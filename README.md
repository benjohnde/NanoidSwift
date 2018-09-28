# NanoidSwift

Straight forward nanoid implementation for Swift.

## Usage

```swift
import Nanoid

let nanoid = Nanoid.init()
nanoid.length = 8 // defaults to `32`
nanoid.alphabet = .full // defaults to `.alphameric`
print(nanoid.secureToken)
```

## Installation

### Via Carthage

Nanoid can be installed using [Carthage](https://github.com/Carthage/Carthage). After installing Carthage just add Nanoid to your Cartfile as follows:

```ruby
github "benjohnde/NanoidSwift" ~> 1.0
```

### Via CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Swift and Objective-C Cocoa projects. After installing CocoaPods add NanoidSwift to your Podfile:

```ruby
platform :ios, '9.0'
pod 'NanoidSwift', '~> 1.0.0'
```


## Hints

- Currently limited to `/dev/urandom`, additional sources may be added later on.
- Alphabet contains a convenience method for symbols, these may change.

