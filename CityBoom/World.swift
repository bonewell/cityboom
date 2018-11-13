//
//  world.swift
//  CityBoom
//
//  Created by Константин Колодий on 05/11/2018.
//  Copyright © 2018 Константин Колодий. All rights reserved.
//

import Foundation

class World {
    private let cities: [String: City]
    
    init(_ cities: [String: City]) {
        assert(!cities.isEmpty);
        self.cities = cities;
    }

    func isCity(_ name: String) -> Bool {
        return find(name) != nil;
    }
    
    func find(_ name: String) -> City? {
        return cities[name.lowercased()];
    }
    
    func getByFirstLetter(_ letter: Character) -> Set<City> {
        let letterLowercased: Character? = String(letter).lowercased().first;

        let cities = self.cities.filter({(key, _) -> Bool in
            return key.first == letter || key.first == letterLowercased;
        });

        return Set<City>(cities.values);
    }
    
    func random() -> City {
        return cities.randomElement()!.value;
    }
}
