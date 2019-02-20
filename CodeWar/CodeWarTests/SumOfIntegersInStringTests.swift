//
//  SumOfIntegersInStringTests.swift
//  CodeWarTests
//
//  Created by Rebecca Zhang on 2019/2/20.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

import XCTest
@testable import CodeWar

class SumOfIntegersInStringTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        XCTAssertEqual(SumOfIntegersInString.sumOfIntegersInString("12.4"), 16)
        XCTAssertEqual(SumOfIntegersInString.sumOfIntegersInString("h3ll0w0rld"), 3)
        XCTAssertEqual(SumOfIntegersInString.sumOfIntegersInString("2 + 3 = "), 5)
        XCTAssertEqual(SumOfIntegersInString.sumOfIntegersInString("Our company made approximately 1 million in gross revenue last quarter."), 1)
        XCTAssertEqual(SumOfIntegersInString.sumOfIntegersInString("The Great Depression lasted from 1929 to 1939."), 3868)
        XCTAssertEqual(SumOfIntegersInString.sumOfIntegersInString("Dogs are our best friends."), 0)
        XCTAssertEqual(SumOfIntegersInString.sumOfIntegersInString("C4t5 are 4m4z1ng."), 18)
        XCTAssertEqual(SumOfIntegersInString.sumOfIntegersInString("The30quick20brown10f0x1203jumps914ov3r1349the102l4zy dog"), 3635)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
