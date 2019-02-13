//
//  ResistorColorCodesTests.swift
//  CodeWarTests
//
//  Created by Rebecca Zhang on 2019/2/13.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

import XCTest
@testable import CodeWar

class ResistorColorCodesTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        let resistor = ResistorColorCodes()
        XCTAssertEqual(resistor.decodeResistorColors("brown black black"), "10 ohms, 20%")
        XCTAssertEqual(resistor.decodeResistorColors("brown black brown gold"), "100 ohms, 5%")
        XCTAssertEqual(resistor.decodeResistorColors("red red brown"), "220 ohms, 20%")
        XCTAssertEqual(resistor.decodeResistorColors("orange orange brown gold"), "330 ohms, 5%")
        XCTAssertEqual(resistor.decodeResistorColors("yellow violet brown silver"), "470 ohms, 10%")
        XCTAssertEqual(resistor.decodeResistorColors("orange orange yellow gold"), "330k ohms, 5%")
        XCTAssertEqual(resistor.decodeResistorColors("red black green gold"), "2M ohms, 5%")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
