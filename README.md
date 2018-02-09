[![CI Status](https://travis-ci.org/benjohnde/NanoidSwift.svg?branch=master)](https://travis-ci.org/benjohnde/NanoidSwift)

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

### Hint

- Currently limited to `/dev/urandom`, additional sources may added later on.
- Alphabet contains a convenience method for symbols, these may change.
