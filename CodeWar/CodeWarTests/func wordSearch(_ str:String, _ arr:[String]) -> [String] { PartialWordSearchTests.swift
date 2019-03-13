//
//  func wordSearch(_ str:String, _ arr:[String]) -> [String] { PartialWordSearchTests.swift
//  CodeWarTests
//
//  Created by Rebecca Zhang on 2019/3/14.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

import XCTest
@testable import CodeWar

class func_wordSearch___str_String____arr__String_______String____PartialWordSearchTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        XCTAssertEqual(PartialWordSearch.wordSearch("ab", ["za", "ab", "abc", "zab", "zbc"]), ["ab", "abc", "zab"])
        XCTAssertEqual(PartialWordSearch.wordSearch("aB", ["za", "ab", "abc", "zab", "zbc"]), ["ab", "abc", "zab"])
        XCTAssertEqual(PartialWordSearch.wordSearch("ab", ["za", "aB", "Abc", "zAB", "zbc"]), ["aB", "Abc", "zAB"])
        XCTAssertEqual(PartialWordSearch.wordSearch("abcd", ["za", "aB", "Abc", "zAB", "zbc"]), ["Empty"])
        XCTAssertEqual(PartialWordSearch.wordSearch("me", ["home", "milk", "Mercury", "fish"]), ["home", "Mercury"])
        XCTAssertEqual(PartialWordSearch.wordSearch("ab", []), ["Empty"])
        XCTAssertEqual(PartialWordSearch.wordSearch("", []), ["Empty"])
        XCTAssertEqual(PartialWordSearch.wordSearch("", ["ab"]), ["Empty"])
        XCTAssertEqual(PartialWordSearch.wordSearch("", [""]), ["Empty"])
        XCTAssertEqual(PartialWordSearch.wordSearch("Empty", ["Empty"]), ["Empty"])
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
