//
//  MumblingTests.swift
//  CodeWarTests
//
//  Created by Rebecca Zhang on 2019/2/9.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

import XCTest
@testable import CodeWar

class MumblingTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        let mumbling = Mumbling()
        XCTAssertEqual(mumbling.accum("abcd"), "A-Bb-Ccc-Dddd")
        XCTAssertEqual(mumbling.accum("RqaEzty"), "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy")
        XCTAssertEqual(mumbling.accum("cwAt"), "C-Ww-Aaa-Tttt")
        XCTAssertEqual(mumbling.accum("HeLLO"), "H-Ee-Lll-Llll-Ooooo")
        XCTAssertEqual(mumbling.accum("Mumble"), "M-Uu-Mmm-Bbbb-Lllll-Eeeeee")
        XCTAssertEqual(mumbling.accum(""), "")
        XCTAssertEqual(mumbling.accum(" "), " ")
        XCTAssertEqual(mumbling.accum("QuickBrown"), "Q-Uu-Iii-Cccc-Kkkkk-Bbbbbb-Rrrrrrr-Oooooooo-Wwwwwwwww-Nnnnnnnnnn")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
