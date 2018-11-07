//
//  StitchInspectorTest.swift
//  CityBoomTest
//
//  Created by Константин Колодий on 07/11/2018.
//  Copyright © 2018 Константин Колодий. All rights reserved.
//

import XCTest
@testable import CityBoom

class StitchInspectorTest: XCTestCase {
    let inspector = StitchInspector();

    func testVerify() {
        XCTAssertTrue(inspector.verify(last: City(1, "Sofia"),
                                       next: City(2, "Angarsk")));
    }
    
    func testVerifyFails() {
        XCTAssertFalse(inspector.verify(last: City(1, "Moscow"), next: City(2, "Angarsk")));
    }
}
