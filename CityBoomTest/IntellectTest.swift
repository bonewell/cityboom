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
    let fakeWorld = FakeWorld()
    let fakeChain = FakeChain()
    var intellect: Intellect?

    override func setUp() {
        intellect = Intellect(fakeWorld);
    }

    func testPlay() {
        fakeWorld.city = City(1, "Kiev");
        fakeChain.city = City(2, "Minsk");
        XCTAssertEqual(intellect!.play(fakeChain), City(1, "Kiev"));
    }
    
    func testPlayFirst() {
        fakeWorld.city = City(1, "Irkutsk");
        fakeChain.city = nil;
        XCTAssertEqual(intellect!.play(fakeChain), City(1, "Irkutsk"));
    }
    
    func testPlayNil() {
        fakeWorld.city = nil;
        fakeChain.city = City(1, "Irkutsk");
        XCTAssertNil(intellect!.play(fakeChain));
    }
}
