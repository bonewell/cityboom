//
//  ChainProtocol.swift
//  CityBoom
//
//  Created by Константин Колодий on 18/11/2018.
//  Copyright © 2018 Константин Колодий. All rights reserved.
//

import Foundation

protocol ChainProtocol {
    func add(_ city: City)
    func last() -> City?
    func all() -> Set<City>
    func isUsed(_ city: City) -> Bool
}