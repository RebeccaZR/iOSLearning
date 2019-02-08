//
//  CalculateBMITests.swift
//  CodeWarTests
//
//  Created by Rebecca Zhang on 2019/2/8.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

import XCTest
@testable import CodeWar

class CalculateBMITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        let calculate = CalculateBMI()
        XCTAssertEqual("Underweight", calculate.bmi(50, 1.80))
        XCTAssertEqual("Normal", calculate.bmi(80, 1.80))
        XCTAssertEqual("Overweight", calculate.bmi(90, 1.80))
        XCTAssertEqual("Obese", calculate.bmi(110, 1.80))
        XCTAssertEqual("Normal", calculate.bmi(50, 1.50))
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
