//
//  world.swift
//  CityBoom
//
//  Created by Константин Колодий on 05/11/2018.
//  Copyright © 2018 Константин Колодий. All rights reserved.
//

import Foundation

/// Represents world which is consist of cities.
class World: WorldProtocol {
    /// Cities is a dictionary where key is a unique code of the city.
    ///
    /// The unique code is lowercased name of the city contains
    /// alphabetical characters only.
    private let cities: [String: City]

    /// Creates world from dictionary of cities.
    ///
    /// - Parameter cities: the dictionary where key is a unique code of the city
    /// The unique code is lowercased name of the city contains
    /// alphabetical characters only.
    init(_ cities: [String: City]) {
        assert(!cities.isEmpty);
        self.cities = cities;
    }

    /// Finds city by name.
    ///
    /// - Parameter name: name of the city to find.
    /// - Returns: city if found otherwise nil.
    func find(_ name: String) -> City? {
        let code = name.lowercased()
            .replacingOccurrences(of: "st.", with: "saint")
            .replacingOccurrences(of: " ", with: "")
            .replacingOccurrences(of: "`", with: "")
            .replacingOccurrences(of: ".", with: "")
            .replacingOccurrences(of: "-", with: "")
            .replacingOccurrences(of: "'", with: "");
        return cities[code];
    }

    /// Gets cities by first letter.
    ///
    /// - Parameter letter: letter with which should begin name of the city.
    /// - Returns: set of the cities.
    func getByFirstLetter(_ letter: Character) -> Set<City> {
        let letterLowercased: Character? = String(letter).lowercased().first;

        let filtered = cities.filter({(key, _) in
            return key.first == letter || key.first == letterLowercased;
        });

        return Set<City>(filtered.values);
    }

    /// Gets random city.
    ///
    /// - Returns: the random city.
    func random() -> City {
        return cities.randomElement()!.value;
    }
}
