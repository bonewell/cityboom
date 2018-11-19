//
//  FakeWorld.swift
//  CityBoomTest
//
//  Created by Константин Колодий on 18/11/2018.
//  Copyright © 2018 Константин Колодий. All rights reserved.
//

import Foundation

class FakeWorld: WorldProtocol {
    var city: City?

    func getByFirstLetter(_ letter: Character) -> Set<City> {
        return city != nil ? [city!] : Set();
    }
    
    func random() -> City {
        return city!;
    }

    func find(_ name: String) -> City? {
        return city;
    }
}
