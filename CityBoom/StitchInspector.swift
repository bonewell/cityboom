//
//  StitchInspector.swift
//  CityBoom
//
//  Created by Константин Колодий on 07/11/2018.
//  Copyright © 2018 Константин Колодий. All rights reserved.
//

import Foundation

class StitchInspector {
    static func verify(last: City, next: City) -> Bool {
        return last.name.lowercased().last == next.name.lowercased().first;
    }
}
