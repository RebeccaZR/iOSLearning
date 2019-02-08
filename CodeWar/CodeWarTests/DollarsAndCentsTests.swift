//
//  DollarsAndCentsTests.swift
//  CodeWarTests
//
//  Created by Rebecca Zhang on 2019/2/8.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

import XCTest
@testable import CodeWar

class DollarsAndCentsTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        let formatter = DollarsAndCents()
        XCTAssertEqual(formatter.formatMoney(0), "$0.00")
        XCTAssertEqual(formatter.formatMoney(3), "$3.00")
        XCTAssertEqual(formatter.formatMoney(3.1), "$3.10")
        XCTAssertEqual(formatter.formatMoney(3.10), "$3.10")
        XCTAssertEqual(formatter.formatMoney(3.100), "$3.10")
        XCTAssertEqual(formatter.formatMoney(3.1000000), "$3.10")
        XCTAssertEqual(formatter.formatMoney(39.99), "$39.99")
        XCTAssertEqual(formatter.formatMoney(314.16), "$314.16")
        XCTAssertEqual(formatter.formatMoney(123456789.166666), "$123456789.17")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
