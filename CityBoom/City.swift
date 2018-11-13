//
//  City.swift
//  CityBoom
//
//  Created by Константин Колодий on 06/11/2018.
//  Copyright © 2018 Константин Колодий. All rights reserved.
//

import Foundation

struct City: Equatable, Hashable {
    let id: Int
    let name: String
    
    init(_ id: Int, _ name: String) {
        assert(id > 0);
        assert(!name.isEmpty);
        self.id = id;
        self.name = name;
    }

    static func == (lhs: City, rhs: City) -> Bool {
        return lhs.id == rhs.id && lhs.name == rhs.name;
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id);
        hasher.combine(name);
    }
}
