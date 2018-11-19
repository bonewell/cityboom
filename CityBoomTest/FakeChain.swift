//
//  FakeChain.swift
//  CityBoomTest
//
//  Created by Константин Колодий on 18/11/2018.
//  Copyright © 2018 Константин Колодий. All rights reserved.
//

import Foundation

class FakeChain: ChainProtocol {
    var count = 0
    var city: City?
    var used = false

    func isUsed(_ city: City) -> Bool {
        return used;
    }

    func last() -> City? {
        return city;
    }
    
    func all() -> Set<City> {
        return Set();
    }

    func add(_ city: City) {
        count += 1;
    }
}
