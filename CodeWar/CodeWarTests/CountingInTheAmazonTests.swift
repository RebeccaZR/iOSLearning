//
//  CountingInTheAmazonTests.swift
//  CodeWarTests
//
//  Created by Rebecca Zhang on 2019/2/15.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

import XCTest
@testable import CodeWar

class CountingInTheAmazonTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        XCTAssertEqual(CountingInTheAmazon.countArare(1), "anane")
        XCTAssertEqual(CountingInTheAmazon.countArare(2), "adak")
        XCTAssertEqual(CountingInTheAmazon.countArare(3), "adak anane")
        XCTAssertEqual(CountingInTheAmazon.countArare(5), "adak adak anane")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
