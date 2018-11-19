//
//  WorldProtocol.swift
//  CityBoom
//
//  Created by Константин Колодий on 18/11/2018.
//  Copyright © 2018 Константин Колодий. All rights reserved.
//

import Foundation

protocol WorldProtocol {
    func find(_ name: String) -> City?
    func getByFirstLetter(_ letter: Character) -> Set<City>
    func random() -> City
}
