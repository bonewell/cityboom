//
//  StitchInspector.swift
//  CityBoom
//
//  Created by Константин Колодий on 07/11/2018.
//  Copyright © 2018 Константин Колодий. All rights reserved.
//

import Foundation

/// Represents a stitch inspector.
///
/// Checks that next city is suited to add to the chain.
struct StitchInspector {
    /// Verifies that name of the next city begins with the same letter like
    /// the last letter of the last used city.
    ///
    /// - Parameters:
    ///   - last: the last used city.
    ///   - next: the next city to add to the chain.
    /// - Returns: true if the next city is suited.
    static func verify(last: City, next: City) -> Bool {
        return last.name.lowercased().last == next.name.lowercased().first;
    }
}
