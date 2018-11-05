//
//  CityBoomTest.swift
//  CityBoomTest
//
//  Created by Константин Колодий on 04/11/2018.
//  Copyright © 2018 Константин Колодий. All rights reserved.
//

import XCTest

func isCity(_ name: String) -> Bool {
    return name.lowercased() == "Moscow".lowercased();
}

class CityBoomTest: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testIsMoscowCity() {
        XCTAssertTrue(isCity("Moscow"))
    }
    
    func testInsensitiveCaseOfName() {
        XCTAssertTrue(isCity("moscow"))
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
