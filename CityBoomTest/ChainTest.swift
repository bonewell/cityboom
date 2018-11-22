//
//  ChainTest.swift
//  CityBoomTest
//
//  Created by Константин Колодий on 07/11/2018.
//  Copyright © 2018 Константин Колодий. All rights reserved.
//

import XCTest
@testable import CityBoom

class ChainTest: XCTestCase {
    var chain = Chain()

    override func setUp() {
        chain = Chain([2: City(2, "Sofia")], last: 2);
    }

    func testIsNotCityUsed() {
        XCTAssertFalse(chain.isUsed(City(1, "Moscow")));
    }
    
    func testIsCityUsed() {
        XCTAssertTrue(chain.isUsed(City(2, "Sofia")));
    }
    
    func testAddCity() {
        chain.add(City(3, "Irkutsk"));
        XCTAssertEqual(chain.cities, [2: City(2, "Sofia"),
                                        3: City(3, "Irkutsk")]);
    }
    
    func testGetLast() {
        chain.add(City(3, "Irkutsk"));
        XCTAssertEqual(chain.last(), City(3, "Irkutsk"));
    }
    
    func testGetLastForEmptyChain() {
        XCTAssertNil(Chain().last());
    }
    
    func testAllCities() {
        XCTAssertEqual(chain.all(), Set<City>([City(2, "Sofia")]));
    }

    func testPerformanceIsUsed() {
        let longchain = Chain([1: City(1, "Moscow"),
                           2: City(2, "Sofia"),
                           3: City(3, "Irkutsk")], last: 3);
        self.measure {
            XCTAssertTrue(longchain.isUsed(City(2, "Sofia")));
        }
    }

    func testPerformanceAllCities() {
        let longchain = Chain([1: City(1, "Moscow"),
                              2: City(2, "Sofia"),
                              3: City(3, "Irkutsk")], last: 3);
        self.measure {
            XCTAssertEqual(longchain.all().count, 3);
        }
    }
}
