//
//  FindTheNthDigitOfANumberTests.swift
//  CodeWarTests
//
//  Created by Rebecca Zhang on 2019/2/25.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

import XCTest
@testable import CodeWar

class FindTheNthDigitOfANumberTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        XCTAssertEqual(FindDigitNumber.findDigit(6429, 3), 4)
        XCTAssertEqual(FindDigitNumber.findDigit(1064, 1), 4)
        XCTAssertEqual(FindDigitNumber.findDigit(10030, 5), 1)
        XCTAssertEqual(FindDigitNumber.findDigit(40915, 9), 0)
        XCTAssertEqual(FindDigitNumber.findDigit(0, 1), 0)
        XCTAssertEqual(FindDigitNumber.findDigit(-1234, 2), 3)
        XCTAssertEqual(FindDigitNumber.findDigit(-5540, 1), 0)
        XCTAssertEqual(FindDigitNumber.findDigit(678998, 0), -1)
        XCTAssertEqual(FindDigitNumber.findDigit(-67854, -57), -1)
        XCTAssertEqual(FindDigitNumber.findDigit(0, -3), -1)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
