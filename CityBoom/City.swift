//
//  City.swift
//  CityBoom
//
//  Created by Константин Колодий on 06/11/2018.
//  Copyright © 2018 Константин Колодий. All rights reserved.
//

import Foundation

class City: Equatable {
    let id: Int
    let name: String
    
    init(_ id: Int, _ name: String) {
        self.id = id;
        self.name = name;
    }

    static func == (lhs: City, rhs: City) -> Bool {
        return lhs.id == rhs.id;
    }
}
