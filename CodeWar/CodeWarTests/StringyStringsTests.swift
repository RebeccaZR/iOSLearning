//
//  StringyStringsTests.swift
//  CodeWarTests
//
//  Created by Rebecca Zhang on 2019/2/8.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

import XCTest
@testable import CodeWar

class StringyStringsTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        let stringy = StringyStrings()
        XCTAssertEqual(stringy.stringy(3), "101")
        XCTAssertEqual(stringy.stringy(5), "10101")
        XCTAssertEqual(stringy.stringy(11), "10101010101")
        XCTAssertEqual(stringy.stringy(2), "10")
        XCTAssertEqual(stringy.stringy(4), "1010")
        XCTAssertEqual(stringy.stringy(16), "1010101010101010")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
