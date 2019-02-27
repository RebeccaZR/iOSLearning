//
//  NumberOfDecimalDigitsTests.swift
//  CodeWarTests
//
//  Created by Rebecca Zhang on 2019/2/27.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

import XCTest
@testable import CodeWar

class NumberOfDecimalDigitsTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        XCTAssertEqual(1,  NumberOfDecimalDigits.digits(num: 5))
        XCTAssertEqual(1,  NumberOfDecimalDigits.digits(num: 0))
        XCTAssertEqual(5,  NumberOfDecimalDigits.digits(num: 12345))
        XCTAssertEqual(10, NumberOfDecimalDigits.digits(num: 9876543210))
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
