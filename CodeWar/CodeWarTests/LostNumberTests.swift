//
//  LostNumberTests.swift
//  CodeWarTests
//
//  Created by Rebecca Zhang on 2019/3/8.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

import XCTest
@testable import CodeWar

class LostNumberTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        XCTAssertEqual(LostNumber.findDeletedNumber([1,2,3,4,5,6,7,8,9],[3,2,4,6,7,8,1,9]), 5)
        XCTAssertEqual(LostNumber.findDeletedNumber([1],[]), 1)
        XCTAssertEqual(LostNumber.findDeletedNumber([],[]), 0)
        XCTAssertEqual(LostNumber.findDeletedNumber([1,2,3,4,5,6,7,8,9],[3,2,4,6,7,8,1,9,5]), 0)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
