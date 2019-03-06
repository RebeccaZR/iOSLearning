//
//  SumOfAllTheMultiplesTests.swift
//  CodeWarTests
//
//  Created by Rebecca Zhang on 2019/3/6.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

import XCTest
@testable import CodeWar

class SumOfAllTheMultiplesTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        XCTAssertEqual(SumOfAllTheMultiples.findSum(5), 8)
        XCTAssertEqual(SumOfAllTheMultiples.findSum(10), 33)
        XCTAssertEqual(SumOfAllTheMultiples.findSum(100), 2418)
        XCTAssertEqual(SumOfAllTheMultiples.findSum(1000), 234168)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
