//
//  ChainProtocol.swift
//  CityBoom
//
//  Created by Константин Колодий on 18/11/2018.
//  Copyright © 2018 Константин Колодий. All rights reserved.
//

import Foundation

/// Represents protocol for a chain of the cities.
protocol ChainProtocol {
    /// Adds a city to the chain.
    ///
    /// - Parameter city: the city to add.
    func add(_ city: City)

    /// Gets last city.
    ///
    /// - Returns: the last city or nil if the chain is empty.
    func last() -> City?

    /// Gets all cities in the chain.
    ///
    /// - Returns: set of cities.
    func all() -> Set<City>

    /// Checks that the city is already used.
    ///
    /// - Parameter city: the city to check.
    /// - Returns: true if the city is used.
    func isUsed(_ city: City) -> Bool
}
