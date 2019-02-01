//
//  DescendingOrderTests.swift
//  CodeWarTests
//
//  Created by Rebecca Zhang on 2019/2/1.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

import XCTest
@testable import CodeWar

class DescendingOrderTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testMySolution() {
        let order = DescendingOrder()
        XCTAssertEqual(order.mySolution(of: 0), 0)
        XCTAssertEqual(order.mySolution(of: 15), 51)
        XCTAssertEqual(order.mySolution(of: 123456789), 987654321)
    }

    func testPerformanceMySolution() {
        let order = DescendingOrder()
        self.measure {
            order.mySolution(of: 123456789)
        }
    }
}
