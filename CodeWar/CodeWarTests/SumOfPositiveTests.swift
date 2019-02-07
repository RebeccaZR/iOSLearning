//
//  SumOfPositiveTests.swift
//  CodeWarTests
//
//  Created by Rebecca Zhang on 2019/2/7.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

import XCTest
@testable import CodeWar

class SumOfPositiveTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        let sum = SumOfPositive()
        XCTAssertEqual(sum.sumOfPositives([1,2,3,4,5]), 15)
        XCTAssertEqual(sum.sumOfPositives([1,-2,3,4,5]), 13)
        XCTAssertEqual(sum.sumOfPositives([-1,2,3,4,-5]), 9)
        XCTAssertEqual(sum.sumOfPositives([]), 0)
        XCTAssertEqual(sum.sumOfPositives([-1,-2,-3,-4,-5]), 0)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
