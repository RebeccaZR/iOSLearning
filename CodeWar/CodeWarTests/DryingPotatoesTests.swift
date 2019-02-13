//
//  DryingPotatoesTests.swift
//  CodeWarTests
//
//  Created by Rebecca Zhang on 2019/2/13.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

import XCTest
@testable import CodeWar

class DryingPotatoesTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func dotest(_ p0: Int, _ w0: Int, _ p1: Int, _ exp: Int) {
        let dry = DryingPotatoes().potatoes(p0, w0, p1)
        XCTAssertEqual(dry, exp)
    }
    
    func testExample() {
        dotest(99, 100, 98, 50)
        dotest(82, 127, 80, 114)
        dotest(93, 129, 91, 100)
        dotest(82, 134, 77, 104)
        dotest(90, 194, 87, 149)
        dotest(82, 173, 77, 135)
        dotest(77, 227, 74, 200)
        dotest(76, 64, 75, 61)
        dotest(81, 120, 79, 108)
        dotest(84, 65, 80, 52)
        dotest(93, 69, 89, 43)
        dotest(78, 121, 75, 106)
        dotest(83, 185, 79, 149)
        dotest(78, 57, 76, 52)
        dotest(79, 132, 78, 126)
        dotest(86, 195, 84, 170)
        dotest(75, 96, 70, 80)
        dotest(81, 150, 77, 123)
        dotest(82, 57, 81, 54)
        dotest(85, 58, 83, 51)
        dotest(78, 173, 77, 165)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
