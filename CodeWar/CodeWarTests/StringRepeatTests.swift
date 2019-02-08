//
//  StringRepeatTests.swift
//  CodeWarTests
//
//  Created by Rebecca Zhang on 2019/2/7.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

import XCTest
@testable import CodeWar

class StringRepeatTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        let repeatObj = StringRepeat()
        XCTAssertEqual(repeatObj.repeatStr(0, "Hello"), "")
        XCTAssertEqual(repeatObj.repeatStr(6, "I"), "IIIIII")
        XCTAssertEqual(repeatObj.repeatStr(20, "L L"), "L LL LL LL LL LL LL LL LL LL LL LL LL LL LL LL LL LL LL LL L")
        XCTAssertEqual(repeatObj.repeatStr(7, "RADAR"), "RADARRADARRADARRADARRADARRADARRADAR")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
