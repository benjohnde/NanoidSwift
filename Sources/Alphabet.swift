//
//  Alphabet.swift
//  Nanoid
//
//  Created by Ben John on 09.02.18.
//  Copyright © 2018 Ben John. All rights reserved.
//

import Foundation

public struct Alphabet {
    let characters: [Character]
    init(_ alphabet: String) {
        self.characters = Array(alphabet)
    }
}

extension Alphabet {
    public static var alphameric = Alphabet(String.alphameric)
    public static var symbols = Alphabet(String.symbols)
    public static var full = Alphabet("\(String.alphameric)\(String.symbols)")
}

extension String {
    internal static var alphameric = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
    internal static var symbols = "!()[]<>=?-_+*#,.:;/\\"
}

