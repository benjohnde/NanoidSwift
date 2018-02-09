//
//  Nanoid.swift
//  Nanoid
//
//  Created by Ben John on 09.02.18.
//  Copyright © 2018 Ben John. All rights reserved.
//

import Foundation

public class Nanoid {
    var randomizer: RandomSource = URandom()
    var alphabet: Alphabet = .alphameric
    var length = 32

    var secureToken: String {
        let randomBytes = randomizer.get(numBytes: length)
        let alphabetCount = alphabet.characters.count
        let randomCharacters = randomBytes.map { byte -> Character in
            return alphabet.characters[Int(byte) % alphabetCount]
        }
        return String(randomCharacters)
    }
}

