//
//  RandomSource.swift
//  Nanoid
//
//  Created by Ben John on 09.02.18.
//  Copyright © 2018 Ben John. All rights reserved.
//

import Foundation

public protocol RandomSource {
    func get(numBytes: Int) -> [UInt8]
}

