//
//  NetworkDevolopmentTests.swift
//  NetworkDevolopmentTests
//
//  Created by Rebecca Zhang on 2019/1/31.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

import XCTest
@testable import NetworkDevolopment

class NetworkDevolopmentTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testDisemvowel() {
        let vc = ViewController()
        XCTAssertEqual("Ths wbst s fr lsrs LL!", vc.disemvowel("This website is for losers LOL!"))
        XCTAssertEqual("N ffns bt,\nYr wrtng s mng th wrst 'v vr rd", vc.disemvowel("No offense but,\nYour writing is among the worst I've ever read"))
        XCTAssertEqual("Wht r y,  cmmnst?", vc.disemvowel("What are you, a communist?"))
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
