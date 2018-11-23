//
//  Game.swift
//  CityBoom
//
//  Created by Константин Колодий on 18/11/2018.
//  Copyright © 2018 Константин Колодий. All rights reserved.
//

import Foundation

/// Represents a game.
class Game {
    /// The world with cities.
    private let world: WorldProtocol

    /// The game intellect.
    private let intellect: IntellectProtocol

    /// The chain of the used cities.
    private let chain: ChainProtocol

    /// Creates new game.
    ///
    /// - Parameters:
    ///   - world: the world with cities.
    ///   - intellect: the game intellect.
    ///   - chain: the chain of the used cities.
    init(_ world: WorldProtocol, _ intellect: IntellectProtocol,
         chain: ChainProtocol = Chain()) {
        self.world = world;
        self.intellect = intellect;
        self.chain = chain;
    }

    /// Intellect goes.
    ///
    /// - Returns: tuple (result, message),
    ///   - result: true if game intellect found unused city,
    ///   - message: the name of the city or
    ///              the desctiption if no more suited cities.
    func go() -> (result: Bool, message: String) {
        if let city = intellect.play(chain) {
            chain.add(city);
            return (true, city.name);
        }
        return (false, "You win!");
    }

    /// Examines a name of the city provided by player.
    ///
    /// - Parameter name: the name of the city.
    /// - Returns: tuple (result, message),
    ///   - result: true if city exists and is suited,
    ///   - message: the name of the city or
    ///              the description if name is not suited.
    func examine(_ name: String) -> (result: Bool, message: String) {
        guard let city = world.find(name) else {
            return (false, "Sorry! I don't know this city.");
        }
        if (chain.isUsed(city)) {
            return (false, "This city is already used.");
        }
        if (!StitchInspector.verify(last: chain.last()!, next: city)) {
            return (false, "Name of the city should start from another letter.");
        }
        chain.add(city);
        return (true, city.name);
    }
}
