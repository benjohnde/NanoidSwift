//
//  Nanoid.swift
//  Nanoid
//
//  Created by Ben John on 09.02.18.
//  Copyright © 2018 Ben John. All rights reserved.
//

import Foundation

public class Nanoid {
    public var randomizer: RandomSource = URandom()
    public var alphabet: Alphabet = .alphameric
    public var length = 32

    public init() {}
    
    public var secureToken: String {
        let randomBytes = randomizer.get(numBytes: length)
        let randomCharacters = randomBytes.map { byte -> Character in
            return self.alphabet.character(for: byte)
        }
        return String(randomCharacters)
    }
}

