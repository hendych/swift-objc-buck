//
//  swift_objc_buckUITests.swift
//  swift-objc-buckUITests
//
//  Created by hendy.christianto on 23/01/19.
//  Copyright © 2019 hendy.christianto. All rights reserved.
//

import XCTest

class SwiftUITests: XCTestCase {
    
    let app = XCUIApplication()

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        app.launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testGenerateButtonClickedDidGenerateLabel() {
        app.buttons["generateButton"].tap()
        
        XCTAssert(app.staticTexts["Generated"].exists, "Error, label not changed into 'Generated'")
    }

}
