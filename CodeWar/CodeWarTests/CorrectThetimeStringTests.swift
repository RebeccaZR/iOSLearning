//
//  CorrectThetimeStringTests.swift
//  CodeWarTests
//
//  Created by Rebecca Zhang on 2019/2/26.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

import XCTest
@testable import CodeWar

class CorrectThetimeStringTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        XCTAssertNil(CorrectTheTimeString.correct(nil))
        XCTAssertNil(CorrectTheTimeString.correct("001122"))
        XCTAssertNil(CorrectTheTimeString.correct("00;11;22"))
        XCTAssertNil(CorrectTheTimeString.correct("0a:1c:22"))
        XCTAssertEqual("", CorrectTheTimeString.correct(""))
        XCTAssertEqual("09:10:01", CorrectTheTimeString.correct("09:10:01"))
        XCTAssertEqual("12:10:10", CorrectTheTimeString.correct("11:70:10"))
        XCTAssertEqual("20:40:39", CorrectTheTimeString.correct("19:99:99"))
        XCTAssertEqual("00:01:01", CorrectTheTimeString.correct("24:01:01"))
        XCTAssertEqual("04:01:01", CorrectTheTimeString.correct("52:01:01"))
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
