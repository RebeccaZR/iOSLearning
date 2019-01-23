//
//  MusicTest.swift
//  ElementsTests
//
//  Created by Rebecca Zhang on 2019/1/18.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

import XCTest
@testable import Elements

class MusicTest: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testParseJSON() {
        let music = Music()
        let bundle = Bundle(for: type(of: self))
        if let path = bundle.path(forResource: "JSON", ofType: "txt") {
            if let data = try? Data.init(contentsOf: URL.init(fileURLWithPath: path)) {
                let result = music.parseJSON(data: data)
                XCTAssertNotNil(result!, "Should not be nil")
                XCTAssertGreaterThan(result!.count, 0, "Should have values")
            } else {
                XCTFail()
            }
        } else {
            XCTFail()
        }
    }
    
    func testRefresh() {
        let music = MockMusic()
        music.refresh()
        XCTAssertNotNil(music.cache, "Cache should not be nil")
    }
    
    func testFetchMusic() {
        let exp = expectation(description: "server fetch")
        
        let music = Music()
        
        music.fetchMusic { (items, error) in
            XCTAssertNotNil(items, "items should not be nil.")
            XCTAssertTrue(items!.count > 0, "items should not be empty.")
            exp.fulfill()
        }
        
        waitForExpectations(timeout: 10.0) { (error) in
            print(error?.localizedDescription)
        }
    }

    func testPerformance() {
        // This is an example of a performance test case.
        self.measure {
            let exp = expectation(description: "server fetch")
            let music = Music()
            music.fetchMusic(completion: { (itmes, error) in
                exp.fulfill()
            })
            waitForExpectations(timeout: 10.0, handler: { (error) in
                print(error?.localizedDescription)
            })
        }
    }

}
