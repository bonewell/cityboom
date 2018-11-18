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
    let fackeIntellect = FakeIntellect()
    var game: Game?

    override func setUp() {
        game = Game(fackeIntellect);
    }

    override func tearDown() {
    }

    func testGo() {
        fackeIntellect.city = City(1, "Moscow");
        let output = game!.go();
        XCTAssertTrue(output.result);
        XCTAssertEqual("Moscow", output.message);
    }
    
    func testGoLose() {
        fackeIntellect.city = nil;
        let output = game!.go();
        XCTAssertFalse(output.result);
        XCTAssertEqual("You win!", output.message);
    }
    
    func testGoAddsCityToChain() {
        fackeIntellect.city = City(1, "Moscow");
        let _ = game!.go();
        XCTAssertEqual(game!.chain.citylist.count, 1);
    }
    
    func testExamine() {
        
    }
}
