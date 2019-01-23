//
//  ElementsUITests.swift
//  ElementsUITests
//
//  Created by Rebecca Zhang on 2019/1/7.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

import XCTest

class ElementsUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testMenu() {
        let app = XCUIApplication()
        let tablesQuery = app.tables
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Label"]/*[[".cells.staticTexts[\"Label\"]",".staticTexts[\"Label\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.navigationBars["Label"].buttons["Menu"].tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Button"]/*[[".cells.staticTexts[\"Button\"]",".staticTexts[\"Button\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.navigationBars["Button"].buttons["Menu"].tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["TextField"]/*[[".cells.staticTexts[\"TextField\"]",".staticTexts[\"TextField\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.navigationBars["TextField"].buttons["Menu"].tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Auto Layout & Size Class"]/*[[".cells.staticTexts[\"Auto Layout & Size Class\"]",".staticTexts[\"Auto Layout & Size Class\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.navigationBars["UIView"].buttons["Menu"].tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["TableView by code"]/*[[".cells.staticTexts[\"TableView by code\"]",".staticTexts[\"TableView by code\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.navigationBars["Elements.TableView"].buttons["Menu"].tap()
    }

    func testButtonView() {
        
        let app = XCUIApplication()
        app.tables/*@START_MENU_TOKEN@*/.staticTexts["Button"]/*[[".cells.staticTexts[\"Button\"]",".staticTexts[\"Button\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
//        let addButton = app.buttons[" Add Button"]
        let addButton = app.buttons["forUITest"]
        
        let label = app.staticTexts["showResultLabel"]
        addButton.tap()
        XCTAssertTrue(label.label.contains("default"), "Add button loses efficacy")
        
        let normalButton = app.buttons["Normal Button"]
        normalButton.tap()
        XCTAssertTrue(label.label.contains("normal"), "Normal button loses efficacy")
        
    }
}
