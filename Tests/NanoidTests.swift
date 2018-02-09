//
//  NanoidTests.swift
//  NanoidTests
//
//  Created by Ben John on 09.02.18.
//  Copyright © 2018 Ben John. All rights reserved.
//

import XCTest
@testable import Nanoid

class NanoidTests: XCTestCase {
    func testNanoidLength() {
        let nanoid = Nanoid()
        [8, 16, 32, 64, 128, 256, 512, 1024].forEach { length in
            nanoid.length = length
            nanoid.alphabet = .full
            XCTAssertEqual(nanoid.secureToken.count, length)
        }
    }

    func testNanoidAlphabetAlphameric() {
        let nanoid = Nanoid()
        nanoid.length = 1024
        let secureToken = nanoid.secureToken
        XCTAssertNil(secureToken.rangeOfCharacter(from: CharacterSet.init(charactersIn: .symbols)))
        XCTAssertNotNil(secureToken.rangeOfCharacter(from: CharacterSet.init(charactersIn: .alphameric)))
    }

    func testNanoidAlphabetSymbols() {
        let nanoid = Nanoid()
        nanoid.length = 1024
        nanoid.alphabet = .symbols
        let secureToken = nanoid.secureToken
        XCTAssertNil(secureToken.rangeOfCharacter(from: CharacterSet.init(charactersIn: .alphameric)))
        XCTAssertNotNil(secureToken.rangeOfCharacter(from: CharacterSet.init(charactersIn: .symbols)))
    }
}

