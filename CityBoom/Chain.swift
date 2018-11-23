//
//  Chain.swift
//  CityBoom
//
//  Created by Константин Колодий on 07/11/2018.
//  Copyright © 2018 Константин Колодий. All rights reserved.
//

import Foundation

/// Represents a chain of the cities.
class Chain: ChainProtocol {
    /// The unique ID of the last used city.
    private var lastId = 0

    /// The cities dictionary where key is unique ID.
    private(set) var cities: [Int: City]

    /// Creates new empty chain.
    init() {
        cities = [:];
    }
    
    /// Creates new chain using the cities dictionary.
    ///
    /// - Parameters:
    ///   - cities: used cities,
    ///   - lastId: the unique ID of the last used city.
    init(_ cities: [Int: City], last lastId: Int) {
        self.cities = cities;
        self.lastId = lastId;
    }

    /// Checks that the city is already used.
    ///
    /// - Parameter city: the city to check.
    /// - Returns: true if the city is used.
    func isUsed(_ city: City) -> Bool {
        return cities[city.id] != nil;
    }

    /// Adds a city to the chain.
    ///
    /// - Parameter city: the city to add.
    func add(_ city: City) {
        lastId = city.id;
        cities[lastId] = city;
    }

    /// Gets last city.
    ///
    /// - Returns: the last city or nil if the chain is empty.
    func last() -> City? {
        return cities[lastId];
    }

    /// Gets all cities in the chain.
    ///
    /// - Returns: set of cities.
    func all() -> Set<City> {
        return Set<City>(cities.values);
    }
}
