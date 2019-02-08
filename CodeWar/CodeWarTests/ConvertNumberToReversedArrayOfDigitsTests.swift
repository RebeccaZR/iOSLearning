//
//  ConvertNumberToReversedArrayOfDigitsTests.swift
//  CodeWarTests
//
//  Created by Rebecca Zhang on 2019/2/8.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

import XCTest
@testable import CodeWar

class ConvertNumberToReversedArrayOfDigitsTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        let convert = ConvertNumberToReversedArrayOfDigits()
        XCTAssertEqual(convert.digitize(123), [3, 2, 1])
        XCTAssertEqual(convert.digitize(348597), [7,9,5,8,4,3])
        XCTAssertEqual(convert.digitize(35231),[1,3,2,5,3])
        XCTAssertEqual(convert.digitize(23582357),[7,5,3,2,8,5,3,2])
        XCTAssertEqual(convert.digitize(984764738),[8,3,7,4,6,7,4,8,9])
        XCTAssertEqual(convert.digitize(45762893920),[0,2,9,3,9,8,2,6,7,5,4])
        XCTAssertEqual(convert.digitize(548702838394),[4,9,3,8,3,8,2,0,7,8,4,5])
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
