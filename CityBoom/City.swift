//
//  City.swift
//  CityBoom
//
//  Created by Константин Колодий on 06/11/2018.
//  Copyright © 2018 Константин Колодий. All rights reserved.
//

import Foundation

/// Represents a city.
struct City: Hashable {
    /// The unique ID.
    let id: Int

    /// The name of the city.
    let name: String

    /// Creates new city.
    ///
    /// - Parameters:
    ///   - id: the unique ID,
    ///   - name: the name of the city.
    init(_ id: Int, _ name: String) {
        assert(id > 0, "Id should be greater than zero");
        assert(!name.isEmpty, "Name should not be empty");
        self.id = id;
        self.name = name;
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(id);
        hasher.combine(name);
    }
}
