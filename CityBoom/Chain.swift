//
//  Chain.swift
//  CityBoom
//
//  Created by Константин Колодий on 07/11/2018.
//  Copyright © 2018 Константин Колодий. All rights reserved.
//

import Foundation

class Chain {
    private var lastId = 0
    var cities: [Int: City]  // TODO: private
    
    init() {
        cities = [:];
    }
    
    init(_ cities: [Int: City], last lastId: Int) {
        self.cities = cities;
        self.lastId = lastId;
    }
    
    func isUsed(_ city: City) -> Bool {
        return cities[city.id] != nil;
    }
    
    func add(_ city: City) {
        lastId = city.id;
        cities[lastId] = city;
    }
    
    func last() -> City? {
        return cities[lastId];
    }
    
    func all() -> Set<City> {
        return Set<City>(cities.values);
    }
}
