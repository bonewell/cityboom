//
//  Chain.swift
//  CityBoom
//
//  Created by Константин Колодий on 07/11/2018.
//  Copyright © 2018 Константин Колодий. All rights reserved.
//

import Foundation

class Chain {
    var lastId: Int = 0
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
        lastId = city.id;
        cities[city.id] = city;
    }
    
    func last() -> City? {
        return cities[lastId];
    }
    
    func all() -> Set<City> {
        return Set<City>(cities.values);
    }
}
