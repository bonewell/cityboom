//
//  City.swift
//  CityBoom
//
//  Created by Константин Колодий on 06/11/2018.
//  Copyright © 2018 Константин Колодий. All rights reserved.
//

import Foundation

struct City: Hashable {
    let id: Int
    let name: String
    
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
