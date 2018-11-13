//
//  IntellectTest.swift
//  CityBoomTest
//
//  Created by Константин Колодий on 09/11/2018.
//  Copyright © 2018 Константин Колодий. All rights reserved.
//

import XCTest
@testable import CityBoom

class IntellectTest: XCTestCase {
    func testPlay() {
        let world = World(["kiev": City(1, "Kiev"),
                           "minsk": City(2, "Minsk")]);
        let intellect = Intellect(world);

        let chain = Chain([2: City(2, "Minsk")], last: 2);
        XCTAssertEqual(intellect.play(chain), City(1, "Kiev"));
    }
    
    func testPlayFirst() {
        let world = World(["irkutsk": City(1, "Irkutsk")]);
        let intellect = Intellect(world);

        let chain = Chain();
        XCTAssertEqual(intellect.play(chain), City(1, "Irkutsk"));
    }
    
    func testGameOf() {
        let world = World(["irkutsk": City(1, "Irkutsk")]);
        let intellect = Intellect(world);
        
        let chain = Chain([1: City(1, "Irkutsk")], last: 1);
        XCTAssertNil(intellect.play(chain));
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
