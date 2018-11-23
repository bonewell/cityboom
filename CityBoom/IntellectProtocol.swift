//
//  IntellectProtocol.swift
//  CityBoom
//
//  Created by Константин Колодий on 18/11/2018.
//  Copyright © 2018 Константин Колодий. All rights reserved.
//

import Foundation

/// Represents protocol for computer intellect.
protocol IntellectProtocol {
    /// Intellect plays.
    ///
    /// - Parameter chain: the chain of the used cities.
    /// - Returns: the city or nil if there is no more suited cities.
    func play(_ chain: ChainProtocol) -> City?
}
