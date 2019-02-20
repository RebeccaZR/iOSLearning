//
//  ToLeetSpeakTests.swift
//  CodeWarTests
//
//  Created by Rebecca Zhang on 2019/2/20.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

import XCTest
@testable import CodeWar

class ToLeetSpeakTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        XCTAssertEqual(ToLeetSpeak.toLeetSpeak("LEET"), "1337")
        XCTAssertEqual(ToLeetSpeak.toLeetSpeak("CODEWARS"), "(0D3W@R$")
        XCTAssertEqual(ToLeetSpeak.toLeetSpeak("HELLO WORLD"), "#3110 W0R1D")
        XCTAssertEqual(ToLeetSpeak.toLeetSpeak("LOREM IPSUM DOLOR SIT AMET"), "10R3M !P$UM D010R $!7 @M37")
        XCTAssertEqual(ToLeetSpeak.toLeetSpeak("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG"), "7#3 QU!(K 8R0WN F0X JUMP$ 0V3R 7#3 1@2Y D06")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
