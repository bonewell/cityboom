//
//  world.swift
//  CityBoom
//
//  Created by Константин Колодий on 05/11/2018.
//  Copyright © 2018 Константин Колодий. All rights reserved.
//

import Foundation

class World {
    let cities: [String: City]
    
    init(_ cities: [String: City]) {
        self.cities = cities;
    }

    func isCity(_ name: String) -> Bool {
        return findCity(name) != nil;
    }
    
    func findCity(_ name: String) -> City? {
        return cities[name.lowercased()];
    }
}
