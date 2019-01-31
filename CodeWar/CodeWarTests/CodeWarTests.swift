//
//  CodeWarTests.swift
//  CodeWarTests
//
//  Created by Rebecca Zhang on 2019/1/31.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

import XCTest
@testable import CodeWar

class CodeWarTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testOtherSolution1() {
        let dis = Disemvowel()
        XCTAssertEqual("Ths wbst s fr lsrs LL!", dis.otherSolution1("This website is for losers LOL!"))
        XCTAssertEqual("N ffns bt,\nYr wrtng s mng th wrst 'v vr rd", dis.otherSolution1("No offense but,\nYour writing is among the worst I've ever read"))
        XCTAssertEqual("Wht r y,  cmmnst?", dis.otherSolution1("What are you, a communist?"))
    }
    
    func testOtherSolution2() {
        let dis = Disemvowel()
        XCTAssertEqual("Ths wbst s fr lsrs LL!", dis.otherSolution2("This website is for losers LOL!"))
        XCTAssertEqual("N ffns bt,\nYr wrtng s mng th wrst 'v vr rd", dis.otherSolution2("No offense but,\nYour writing is among the worst I've ever read"))
        XCTAssertEqual("Wht r y,  cmmnst?", dis.otherSolution2("What are you, a communist?"))
    }
    
    func testMySolution() {
        let dis = Disemvowel()
        XCTAssertEqual("Ths wbst s fr lsrs LL!", dis.mySolution("This website is for losers LOL!"))
        XCTAssertEqual("N ffns bt,\nYr wrtng s mng th wrst 'v vr rd", dis.mySolution("No offense but,\nYour writing is among the worst I've ever read"))
        XCTAssertEqual("Wht r y,  cmmnst?", dis.mySolution("What are you, a communist?"))
    }
    
    let testString = "I was working on a mini project at Square involving performance unit testing for iOS — essentially, looking into how we could introduce performance unit testing, what our options are, and how it would scale on our CI (continuous integration). In focusing on the one tool Apple provides as part of its unit testing suite, the magical measureBlock method, the question was: how does it work? And, is this going to work for us and our CI process?"
    
    func testPerformanceOtherSolution1() {
        let dis = Disemvowel()

        self.measure {
            dis.otherSolution1(testString)
        }
    }
    
    func testPerformanceOtherSolution2() {
        let dis = Disemvowel()

        self.measure {
            dis.otherSolution2(testString)
        }
    }
    
    func testPerformanceMySolution() {
        let dis = Disemvowel()
        
        self.measure {
            dis.mySolution(testString)
        }
    }

}
