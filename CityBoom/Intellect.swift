//
//  Intellect.swift
//  CityBoom
//
//  Created by Константин Колодий on 09/11/2018.
//  Copyright © 2018 Константин Колодий. All rights reserved.
//

import Foundation

/// Represents a game intellect.
class Intellect: IntellectProtocol {
    /// The world with the cities.
    private let world: WorldProtocol

    /// Creates new intellect.
    ///
    /// - Parameter world: the world with the cities.
    init(_ world: WorldProtocol) {
        self.world = world;
    }

    /// Intellect plays.
    ///
    /// - Parameter chain: the chain of the used cities.
    /// - Returns: the city or nil if there is no more suited cities.
    func play(_ chain: ChainProtocol) -> City? {
        if let city = chain.last() {
            let posible = world.getByFirstLetter(city.name.last!);
            return posible.subtracting(chain.all()).randomElement();
        }
        return world.random();
    }
}
