//
//  WorldStorage.swift
//  CityBoom
//
//  Created by Константин Колодий on 16/11/2018.
//  Copyright © 2018 Константин Колодий. All rights reserved.
//

import Foundation

/// Represents a persistent storage of the world.
struct WorldStorage {
    /// Reads a world from CSV text.
    ///
    /// - Parameter text: CSV text.
    /// - Returns: dictionary of the cities.
    static func read(_ text: String) -> [String: City] {
        var cities = [String: City]()
        let lines = text.split(separator: "\r\n");
        for l in lines {
            let substr = l.split(separator: ",");
            let id = Int(substr[0]) ?? 0;
            let code = String(substr[1]);
            let name = String(substr[2]);
            cities[code] = City(id, name);
        }
        return cities;
    }
}
