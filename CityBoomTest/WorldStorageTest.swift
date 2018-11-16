//
//  WorldStorageTest.swift
//  CityBoomTest
//
//  Created by Константин Колодий on 16/11/2018.
//  Copyright © 2018 Константин Колодий. All rights reserved.
//

import XCTest
@testable import CityBoom

class WorldStorageTest: XCTestCase {
    func testReadCityFromCsvString() {
        XCTAssertEqual(WorldStorage.read("1,irkutsk,Irkutsk"),
                       ["irkutsk": City(1, "Irkutsk")]);
    }
    
    func testReadFewCitiesFromCsvString() {
        XCTAssertEqual(WorldStorage.read("1,irkutsk,Irkutsk\r\n2,moscow,Moscow\r\n"),
                       ["irkutsk": City(1, "Irkutsk"),
                        "moscow": City(2, "Moscow")]);
    }
}
