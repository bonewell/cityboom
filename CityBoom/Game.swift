//
//  Game.swift
//  CityBoom
//
//  Created by Константин Колодий on 18/11/2018.
//  Copyright © 2018 Константин Колодий. All rights reserved.
//

import Foundation

class Game {
    private let intellect: IntellectProtocol
    let chain = Chain() // TODO: private
    
    init(_ intellect: IntellectProtocol) {
        self.intellect = intellect;
    }

    func go() -> (result: Bool, message: String) {
        if let city = intellect.play(chain) {
            chain.add(city);
            return (true, city.name);
        }
        return (false, "You win!");
    }
}
