//
//  SquareOrSquareRootTests.swift
//  CodeWarTests
//
//  Created by Rebecca Zhang on 2019/2/8.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

import XCTest
@testable import CodeWar

class SquareOrSquareRootTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        let square = SquareOrSquareRoot()
        XCTAssertEqual(square.squareOrSquareRoot([4, 3, 9, 7, 2, 1]), [2, 9, 3, 49, 4, 1])
        XCTAssertEqual(square.squareOrSquareRoot([100, 101, 5, 5, 1, 1]), [10, 10201, 25, 25, 1, 1])
        XCTAssertEqual(square.squareOrSquareRoot([1, 2, 3, 4, 5, 6]), [1, 4, 9, 2, 25, 36])
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
