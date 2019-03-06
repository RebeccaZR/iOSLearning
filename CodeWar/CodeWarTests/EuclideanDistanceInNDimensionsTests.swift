//
//  EuclideanDistanceInNDimensionsTests.swift
//  CodeWarTests
//
//  Created by Rebecca Zhang on 2019/3/7.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

import XCTest
@testable import CodeWar

class EuclideanDistanceInNDimensionsTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testExample() {
        XCTAssertEqual(EuclideanDistanceInNDimensions.euclideanDistanceBetween([-1], and: [2]), 3.0)
        XCTAssertEqual(EuclideanDistanceInNDimensions.euclideanDistanceBetween([-1, 2], and: [2, 4]), 3.61)
        XCTAssertEqual(EuclideanDistanceInNDimensions.euclideanDistanceBetween([-1, 2, 5], and: [2, 4, 9]), 5.39)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
