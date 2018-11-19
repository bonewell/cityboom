//
//  GameTest.swift
//  CityBoomTest
//
//  Created by Константин Колодий on 18/11/2018.
//  Copyright © 2018 Константин Колодий. All rights reserved.
//

import XCTest
@testable import CityBoom

class GameTest: XCTestCase {
    let fakeWorld = FakeWorld()
    let fakeIntellect = FakeIntellect()
    let fakeChain = FakeChain()
    var game: Game?

    override func setUp() {
        game = Game(fakeWorld, fakeIntellect, chain: fakeChain);
    }

    override func tearDown() {
    }

    func testGo() {
        fakeIntellect.city = City(1, "Moscow");
        XCTAssert((true, "Moscow") == game!.go());
    }
    
    func testGoLose() {
        fakeIntellect.city = nil;
        XCTAssert((false, "You win!") == game!.go());
    }
    
    func testGoAddsCityToChain() {
        fakeIntellect.city = City(1, "Moscow");
        let _ = game!.go();
        XCTAssertEqual(fakeChain.count, 1);
    }
    
    func testExamine() {
        fakeWorld.city = City(1, "New York");
        fakeChain.used = false;
        fakeChain.city = City(2, "London");
        let (result, message) = game!.examine("New-York");
        XCTAssertTrue(result);
        XCTAssertEqual("New York", message);
    }
    
    func testExamineAddsCityToChain() {
        fakeWorld.city = City(1, "Berlin");
        fakeChain.used = false;
        fakeChain.city = City(2, "Idlib");
        let _ = game!.examine("Berlin");
        XCTAssertEqual(fakeChain.count, 1);
    }
    
    func testExamineNoCity() {
        fakeWorld.city = nil;
        let (result, message) = game!.examine("No Name");
        XCTAssertFalse(result);
        XCTAssertEqual("Sorry! I don't know this city.", message);
    }
    
    func testExamineCityIsUsed() {
        fakeWorld.city = City(1, "London");
        fakeChain.used = true;
        let (result, message) = game!.examine("London");
        XCTAssertFalse(result);
        XCTAssertEqual("This city is already used.", message);
    }
    
    func testExamineFirstLetterInName() {
        fakeWorld.city = City(1, "Sofia");
        fakeChain.used = false;
        fakeChain.city = City(2, "Moscow");
        let (result, message) = game!.examine("Sofia");
        XCTAssertFalse(result);
        XCTAssertEqual("Name of the city should start from another letter.", message);
    }
}
