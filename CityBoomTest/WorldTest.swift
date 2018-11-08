//
//  CityBoomTest.swift
//  CityBoomTest
//
//  Created by Константин Колодий on 04/11/2018.
//  Copyright © 2018 Константин Колодий. All rights reserved.
//

import XCTest
@testable import CityBoom

class WorldTest: XCTestCase {
    var world = World([:])

    override func setUp() {
        world = World(["moscow": City(1, "Moscow")]);
    }

    func testIsMoscowCity() {
        XCTAssertTrue(world.isCity("Moscow"));
    }
    
    func testInsensitiveCaseOfName() {
        XCTAssertTrue(world.isCity("moscow"));
    }
    
    func testFindUnknownCity() {
        XCTAssertNil(world.findCity("Majla"));
    }
    
    func testFindKnownCity() {
        XCTAssertEqual(world.findCity("Moscow")!, City(1, "Moscow"));
    }
    
    func testGetCitiesByFirstLetter() {
        let earth = World(["moscow": City(1, "Moscow"),
                           "kiev": City(2, "Kiev")]);
        XCTAssertEqual(earth.getCitiesByFirstLetter("m"),
                       Set<City>([City(1, "Moscow")]));
    }
    
    func testGetCitiesByFirstUpperLetter() {
        let earth = World(["moscow": City(1, "Moscow"),
                           "kiev": City(2, "Kiev")]);
        XCTAssertEqual(earth.getCitiesByFirstLetter("M"),
                       Set<City>([City(1, "Moscow")]));
    }

    func testPerformanceIsCity() {
        let earth = World(["moscow": City(1, "Moscow"),
                           "irkutsk": City(2, "Irkutsk"),
                           "sofia": City(3, "Sofia")])
        self.measure {
            XCTAssertTrue(earth.isCity("Irkutsk"));
        }
    }
    
    func testPerformanceGetCitiesByFirstUpperLetter() {
        let earth = World(["moscow": City(1, "Moscow"),
                           "kiev": City(2, "Kiev"),
                           "irkutsk": City(3, "Irkutsk"),
                           "sofia": City(4, "Sofia"),
                           "minsk": City(5, "Minsk")]);
        self.measure {
            XCTAssertEqual(earth.getCitiesByFirstLetter("m"),
                           Set<City>([City(1, "Moscow"),
                                      City(5, "Minsk")]));
        }
    }

}
