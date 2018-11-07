//
//  Chain.swift
//  CityBoom
//
//  Created by Константин Колодий on 07/11/2018.
//  Copyright © 2018 Константин Колодий. All rights reserved.
//

import Foundation

class Chain {
    var cities: [Int: City]
    
    init() {
        cities = [:];
    }
    
    init(_ cities: [Int: City]) {
        self.cities = cities;
    }
    
    func isUsed(_ city: City) -> Bool {
        return cities[city.id] != nil;
    }
    
    func add(_ city: City) {
        cities[city.id] = city;
    }
}
