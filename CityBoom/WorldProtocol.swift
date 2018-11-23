//
//  WorldProtocol.swift
//  CityBoom
//
//  Created by Константин Колодий on 18/11/2018.
//  Copyright © 2018 Константин Колодий. All rights reserved.
//

import Foundation

/// Represents protocol for world.
protocol WorldProtocol {
    /// Finds city by name.
    ///
    /// - Parameter name: name of the city to find.
    /// - Returns: city if found otherwise nil.
    func find(_ name: String) -> City?

    /// Gets cities by first letter.
    ///
    /// - Parameter letter: letter with which should begin name of the city.
    /// - Returns: set of the cities.
    func getByFirstLetter(_ letter: Character) -> Set<City>

    /// Gets random city.
    ///
    /// - Returns: the random city.
    func random() -> City
}
