[![CI Status](https://travis-ci.org/benjohnde/NanoidSwift.svg?branch=master)](https://travis-ci.org/benjohnde/NanoidSwift)
[![Carthage Compatibility](https://img.shields.io/badge/carthage-✓-e2c245.svg)](https://github.com/Carthage/Carthage/)

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

### Installation

Nanoid can be installed using [Carthage](https://github.com/Carthage/Carthage). After installing Carthage just add Nanoid to your Cartfile as follows:

```ruby
github "benjohnde/NanoidSwift" ~> 0.1
```

### Hint

- Currently limited to `/dev/urandom`, additional sources may added later on.
- Alphabet contains a convenience method for symbols, these may change.

