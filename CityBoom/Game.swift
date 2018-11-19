//
//  Game.swift
//  CityBoom
//
//  Created by Константин Колодий on 18/11/2018.
//  Copyright © 2018 Константин Колодий. All rights reserved.
//

import Foundation

class Game {
    private let world: WorldProtocol
    private let intellect: IntellectProtocol
    private let chain: ChainProtocol
    
    init(_ world: WorldProtocol, _ intellect: IntellectProtocol,
         chain: ChainProtocol = Chain()) {
        self.world = world;
        self.intellect = intellect;
        self.chain = chain;
    }

    func go() -> (result: Bool, message: String) {
        if let city = intellect.play(chain) {
            chain.add(city);
            return (true, city.name);
        }
        return (false, "You win!");
    }
    
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
