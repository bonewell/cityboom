//
//  Intellect.swift
//  CityBoom
//
//  Created by Константин Колодий on 09/11/2018.
//  Copyright © 2018 Константин Колодий. All rights reserved.
//

import Foundation

class Intellect {
    private let world: World

    init(_ world: World) {
        self.world = world;
    }

    func play(_ chain: Chain) -> City? {
        if let city = chain.last() {
            let posible = world.getByFirstLetter(city.name.last!);
            return posible.subtracting(chain.all()).randomElement();
        }
        return world.random();
    }
}
