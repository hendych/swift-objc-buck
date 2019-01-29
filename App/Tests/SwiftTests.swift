//
//  SwiftTests.swift
//  Tests
//
//  Created by hendy.christianto on 24/01/19.
//

import XCTest

class SwiftTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testInitializeMyModelWithJson() {
        let model = MyModel(json: ["name": "Hendy"])

        XCTAssert(model.name == "Hendy", "Initialized model property is not expected.")
    }
}
