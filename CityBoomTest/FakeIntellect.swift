//
//  FakeIntellect.swift
//  CityBoomTest
//
//  Created by Константин Колодий on 18/11/2018.
//  Copyright © 2018 Константин Колодий. All rights reserved.
//

import Foundation

class FakeIntellect: IntellectProtocol {
    var city: City?

    func play(_ chain: Chain) -> City? {
        return city;
    }
}
