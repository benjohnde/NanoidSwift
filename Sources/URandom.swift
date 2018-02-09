//
//  URandom.swift
//  Nanoid
//
//  Created by Ben John on 09.02.18.
//  Copyright © 2018 Ben John. All rights reserved.
//

import Foundation

public class URandom: RandomSource {
    public func get(numBytes: Int) -> [UInt8] {
        let file = fopen("/dev/urandom", "rb")
        defer {
            fclose(file)
        }
        var bytes = [UInt8](repeating: 0, count: numBytes)
        fread(&bytes, 1, numBytes, file)
        return bytes
    }
}

